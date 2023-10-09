//
//  main.swift
//  wordlasso
//
//  Created by Michal Derleta on 07/10/2023.
//

import Foundation

struct Wordlasso {
    func run() throws {
        let wordList = ["Wolf", "wolf", "word", "works", "woo"]
        let wordFinder = WordFinder(wordList: wordList)
        
        let template = "wo.."
        
        let matches = wordFinder.findMatches(for: template)
        print("Found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
        for match in matches {
            print(match)
        }
    }
}

do {
    try Wordlasso().run()
} catch {
    fatalError("Program exited unexpecteadly. \(error)")
}

