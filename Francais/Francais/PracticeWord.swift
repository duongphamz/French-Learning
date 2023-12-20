//
//  PracticeWord.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import Foundation

enum PracticeType: Int {
    case guessMeaningFromWord
    case guessWordFromMeaning
    case guessWordFromSound
}
struct PracticeWord: Identifiable {
    var id: String {
        return word.id.uuidString
    }
    let word: Word
    let type: PracticeType
    let answers: [String]
}
