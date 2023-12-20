//
//  PracticeView.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import SwiftUI

struct PracticeView: View {
    let practiceWords: [PracticeWord]
    @State private var selectedPage = 0
    @State private var shouldShowResultPage: Bool = false
    @State private var numberOfCorrectAnswers: Int = 0
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        if shouldShowResultPage {
            Text("This is your result:")
            Text("\(numberOfCorrectAnswers)/\(practiceWords.count) corrected answers")
            Button("Back to Home", action: {
                presentationMode.wrappedValue.dismiss()
            })
        } else {
            TabView(selection: $selectedPage) {
                ForEach(Array(practiceWords.enumerated()), id: \.offset) { index, practice in
                    switch practice.type {
                    case .guessMeaningFromWord:
                        GuessMeaningFromWordView(practiceWord: practice, index: index, maxIndex: practiceWords.count - 1, selectedPage: $selectedPage,
                                                 shouldShowResultPage: $shouldShowResultPage, numberOfCorrectAnswers: $numberOfCorrectAnswers)
                    case .guessWordFromMeaning:
                        GuessWordFromMeaningView()
                    case .guessWordFromSound:
                        GuessWordFromSoundView()
                    }
                }
            }
            .tabViewStyle(.page)
        }
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView(practiceWords: [
            PracticeWord(word: Word(word: "Duong", meaning: "Voi"), type: .guessMeaningFromWord, answers: ["Voi"])])
    }
}
