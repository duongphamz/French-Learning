//
//  GuessMeaningFromWordView.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import SwiftUI
import AVFoundation
struct GuessMeaningFromWordView: View {
    let speechSynthesizer = AVSpeechSynthesizer()
    let practiceWord: PracticeWord
    let index: Int
    let maxIndex: Int
    @Binding var selectedPage: Int
    @State private var selectedAnswer: String? = nil
    @Binding var shouldShowResultPage: Bool
    @Binding var numberOfCorrectAnswers: Int
    var body: some View {
        VStack {
            Spacer()
            Text("What is the meaning of \(practiceWord.word.word)?")
            Button("Listen", action: {
                speakWord(practiceWord.word.word)
            })
            
            List(practiceWord.answers, id: \.self) { answer in
                HStack {
                    Text(answer)
                    Spacer()
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedAnswer = answer
                    updateResult(for: answer)
                    if index < maxIndex {
                        withAnimation {
                            selectedPage += 1
                        }
                    } else {
                        shouldShowResultPage = true
                    }
                }
                .background(
                    makeBackground(for: answer)
                )
            }
            Spacer()
        }
    }
    
    func makeBackground(for answer: String) -> Color {
        if let selectedAnswer, selectedAnswer == answer, selectedAnswer == practiceWord.word.meaning {
            return .green
        }
        
        if let selectedAnswer, answer == practiceWord.word.meaning {
            return .green
        }
        
        if let selectedAnswer, selectedAnswer == answer, selectedAnswer != practiceWord.word.meaning {
            return .red
        }
        
        return .clear
    }
    
    func updateResult(for answer: String) {
        if let selectedAnswer, selectedAnswer == answer, selectedAnswer == practiceWord.word.meaning {
            numberOfCorrectAnswers += 1
        }
    }
    
    func speakWord(_ word: String) {
        let utterance = AVSpeechUtterance(string: word)
        utterance.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        
        speechSynthesizer.speak(utterance)
    }
}

struct GuessMeaningFromWordView_Previews: PreviewProvider {
    static var previews: some View {
        GuessMeaningFromWordView(practiceWord: PracticeWord(word: Word(word: "Bonjour", meaning: "Hello"), type: .guessMeaningFromWord, answers: ["good bye", "good evening", "my name is Duong"]),
                                 index: 0, maxIndex: 1,
                                 selectedPage: .constant(0),
                                 shouldShowResultPage: .constant(false),
                                 numberOfCorrectAnswers: .constant(0))
    }
}
