//
//  LocalStorageManager.swift
//  Francais
//
//  Created by duongpham on 17/08/2023.
//

import Foundation

protocol LocalStorageManagerType {
    func getVocabsFromLocalDatafile() -> [Word]?
}

struct Datafile: Codable {
    let vocabs: [EncodeWord]
}

class LocalStorageManager: LocalStorageManagerType {
    func getVocabsFromLocalDatafile() -> [Word]? {
        if let data = jsonString.data(using: .utf8) {
            let decoder = JSONDecoder()
            
            do {
                let datafile = try decoder.decode(Datafile.self, from: data)
                return datafile.vocabs.map {
                    Word(word: $0.word, meaning: $0.meaning)
                }
            }
            catch {
                print(error)
            }
        }
        return nil
    }
}
