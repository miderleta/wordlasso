//
//  WordFinder.swift
//  wordlasso - a command line tool to help a user find words
//  that fit the template they provide
//  This can be a good app for Wordle as a help.
//
//  Created by Michal Derleta on 07/10/2023.
//

import Foundation

//  stores array of Strings to compare against provided template string
struct WordFinder {
    static let wildcard: Character = "."
    let wordList: [String]
    
    //  helper method to determine wheater a given word mathces provided template
    private func isMatch(template: String, with word: String) -> Bool {
        guard template.count == word.count else {
            return false
        }
        
        return template.indices.allSatisfy {
            index in template[index] == WordFinder.wildcard || template[index] == word[index]
        }
    }
    
    //  filter the wordList so it contains only words that match the template
    func findMatches(for template: String) -> [String] {
        return wordList.filter {
            candidate in isMatch(template: template, with: candidate)
        }
    }
    
}


