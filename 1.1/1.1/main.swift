//
//  main.swift
//  1.1
//
//  Created by Eric Lanza on 5/23/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

import Foundation

/*
 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
 Hints: #44, #117, #132
 */

//With additional data structures
func checkForAllUniqueCharacters(in string: String) -> Bool {
    let charSet = Set(string)
    
    if charSet.count == string.count {
        return true
    } else {
        return false
    }
    
}

//Without additional data structures
func checkForAllUniqueCharacters2(in s: String) -> Bool {
    
    var checkString = ""
    
    for c in s {
        if checkString.contains(c) {
            return false
        } else {
            checkString.append(c)
        }
    }
    return true
}

print(checkForAllUniqueCharacters(in: "abcdefghijklmnopqrstuvwxyz"))
print(checkForAllUniqueCharacters2(in: "abcdefghijklmnopqrstuvwxyz"))
