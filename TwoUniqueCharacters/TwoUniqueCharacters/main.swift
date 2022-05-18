//
//  main.swift
//  TwoUniqueCharacters
//
//  Created by Rostyslav Gress on 18.05.22.
//

import Foundation


let stringsArray = ["bdWadaacbabcbcRc", "dacbabcdacbbcRcbdWa", "abcbbbbcccbdddadacb", "abcbcRcbdWadacb"]

var verySubstring = ""

for i in 0 ..< stringsArray.count {
    let charsArray = Array(stringsArray[i])
    
    for character in charsArray {
        let allSameCharacters: [String] = charsArray.filter({ $0 == character }).compactMap({ String($0) })
        
        let singleString = allSameCharacters.joined(separator: ",").replacingOccurrences(of: ",", with: "")
        
        if singleString.count > verySubstring.count {
            verySubstring = singleString
        }
    }
}

print("Long substring with 2 uniques characters -> \(verySubstring)")
