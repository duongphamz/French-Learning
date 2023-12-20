//
//  ContentView.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import SwiftUI
import AVFoundation
import UserNotifications

struct ContentView: View {
    
    @State private var wordText: String = ""
    @State private var meaningText: String = ""
    @State private var searchKeyword: String = ""
    @StateObject private var viewModel = FraincaisViewModel()
    @State private var showPracticeView = false
    let speechSynthesizer = AVSpeechSynthesizer()
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    TextField("Search word", text: $searchKeyword)
                        .textFieldStyle(.roundedBorder)
                    List {
                        ForEach(Array(viewModel.vocabularyList.enumerated()), id: \.offset) { index, word in
                            DisclosureGroup(word.word) {
                                HStack {
                                    Text(word.meaning)
                                    Spacer()
                                    Button(action: {
                                        speakWord(word.word)
                                    }) {
                                        Image(systemName: "speaker.wave.3.fill")
                                    }
                                }
                            }
                        }
                        .onDelete(perform: delete)
                    }
                    .listStyle(.inset)
                    .toolbar {
                        EditButton()
                    }
                }
                .padding()
                .navigationTitle("Vocabulary List")
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            VStack {
                TextField("word", text: $wordText)
                    .textFieldStyle(.roundedBorder)
                TextField("meaning", text: $meaningText)
                    .textFieldStyle(.roundedBorder)
                Button("Add", action: {
                    let wordWithMeaning = Word(word: wordText, meaning: meaningText)
                    viewModel.saveNewWordToVocabularyList(word: wordWithMeaning)
                    wordText = ""
                    meaningText = ""
                })
            }
            .padding()
            .tabItem {
                Image(systemName: "pencil.tip.crop.circle.badge.plus")
                Text("Add Word")
            }
            
            NavigationView {
                VStack {
                    Button("Practice 5 random words", action: {
                        if !viewModel.vocabularyList.isEmpty {
                            showPracticeView = true
                        }
                    })
                    .sheet(isPresented: $showPracticeView, content: {
                        PracticeView(practiceWords: viewModel.getPracticeRandomWords())
                    })
                    Spacer()
                    Button("Enable Reminder", action: {
                        scheduleHourlyReminders()
                    })
                }
                .padding()
                .navigationTitle("Practice")
            }

            .tabItem {
                Image(systemName: "pencil.circle.fill")
                Text("Practice")
            }
        }
        .tabViewStyle(.automatic)
        .onAppear(perform: {
            viewModel.loadVocabularyList()
        })
        .onChange(of: searchKeyword, perform: { keyword in
            
        })
    }

    func speakWord(_ word: String) {
        let utterance = AVSpeechUtterance(string: word)
        utterance.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        
        speechSynthesizer.speak(utterance)
    }
    
    func delete(at offsets: IndexSet) {
        viewModel.removeWordBy(indexSet: offsets)
    }
    
    func scheduleHourlyReminders() {
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.body = "Don't forget to open the app!"
        content.sound = .default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3600, repeats: true) // 1 hour = 3600 seconds
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling hourly reminder: \(error.localizedDescription)")
            } else {
                print("Hourly reminder scheduled successfully")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
