//
//  FrancaisViewModel.swift
//  Francais
//
//  Created by duongpham on 10/08/2023.
//

import Foundation

class FraincaisViewModel: ObservableObject {
    let localStorageManager: LocalStorageManagerType
    init(localStorageManager: LocalStorageManagerType = LocalStorageManager()) {
        self.localStorageManager = localStorageManager
    }
    
    enum Constant {
        static let vocabularyListKey: String = "VocabularyListKey"
        static let practiceCountDicKey: String = "PracticeCountDicKey"
    }
    @Published var vocabularyList: [Word] = []
    @Published var filteredVocabularyList: [Word] = []
    private var practiceCountDic: [String: Int] = [:]
    
    func saveNewWordToVocabularyList(word: Word) {
        let wordsFromDatafile = localStorageManager.getVocabsFromLocalDatafile() ?? []
        guard let data = UserDefaults.standard.data(forKey: Constant.vocabularyListKey) else {
            let initWords = [word]
            let data = try? JSONEncoder().encode(initWords)
            UserDefaults.standard.set(data, forKey: Constant.vocabularyListKey)
            self.vocabularyList = initWords + wordsFromDatafile
            return
        }
        
        if var storedVocabList = try? JSONDecoder().decode([Word].self, from: data) {
            storedVocabList.append(word)
            let data = try? JSONEncoder().encode(storedVocabList)
            UserDefaults.standard.set(data, forKey: Constant.vocabularyListKey)
            self.vocabularyList = storedVocabList + wordsFromDatafile
        }
    }
    
    func filterList(by keyword: String) {
        
    }
    
    func loadVocabularyList() {
        if UserDefaults.standard.data(forKey: Constant.practiceCountDicKey) == nil {
            let dic: [String: Int] = [:]
            let data = try? JSONEncoder().encode(dic)
            UserDefaults.standard.set(data, forKey: Constant.vocabularyListKey)
            practiceCountDic = dic
        }
        let wordsFromDatafile = localStorageManager.getVocabsFromLocalDatafile() ?? []
        guard let data = UserDefaults.standard.data(forKey: Constant.vocabularyListKey) else {
            vocabularyList = wordsFromDatafile
            return
        }
        
        let wordFromDevice = (try? JSONDecoder().decode([Word].self, from: data)) ?? []
        vocabularyList = wordFromDevice + wordsFromDatafile
    }
    
    func removeWordBy(indexSet: IndexSet) {
//        guard let data = UserDefaults.standard.data(forKey: Constant.vocabularyListKey) else {
//            return
//        }
//
//        if var wordList = try? JSONDecoder().decode([Word].self, from: data) {
//            wordList.remove(atOffsets: indexSet)
//            let data = try? JSONEncoder().encode(wordList)
//            UserDefaults.standard.set(data, forKey: Constant.vocabularyListKey)
//            self.vocabularyList = wordList
//        }
    }
    
    func getPracticeRandomWords() -> [PracticeWord] {
        let numberOfRandomWords = 5
        let shuffledList = vocabularyList.shuffled()
        let zeroPracticeTimeWords = vocabularyList.filter { practiceCountDic[$0.word] == 0 }
        let randomList = shuffledList.prefix(numberOfRandomWords)
        return randomList.map { word in
            let practiceType = PracticeType.guessMeaningFromWord
            var answers = vocabularyList.shuffled().filter { $0.id != word.id }.map { $0.meaning }.prefix(3)
            let correctAnswer = word.meaning
            answers.append(correctAnswer)
            answers.shuffle()
            return PracticeWord(word: word, type: practiceType, answers: Array(answers))
        }
    }
    
    func getRandomPracticeType() -> PracticeType {
        let randomInt = Int.random(in: 0...2)
        return PracticeType(rawValue: randomInt) ?? .guessMeaningFromWord
    }
}
