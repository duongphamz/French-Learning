//
//  Word.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import Foundation

struct EncodeWord: Codable {
    let word: String
    let meaning: String
}

struct Word: Codable, Identifiable {
    var id = UUID()
    let word: String
    let meaning: String
}
