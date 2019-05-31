//
//  main.swift
//  1.4
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palin­ drome. A palindrome is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.
 EXAMPLE
 Input: Tact Coa
 Output: True (permutations: "taco cat", "atco eta", etc.)
 
 */

import Foundation

func checkForPalindromePermutation(_ s: String) -> Bool {
    
    var cDict: [Character: Int] = [:]
    
    for c in s {
        if c == " " { continue }
        if let i = cDict[c] {
            cDict[c] = i + 1
        } else {
            cDict[c] = 1
        }
    }
    
    var hasOddCount = false
    
    for (_, value) in cDict {
        if value % 2 != 0 {
            if hasOddCount == false {
                hasOddCount = true
            } else {
                return false
            }
        }
    }
    return true
}

print(checkForPalindromePermutation("hello"))
print(checkForPalindromePermutation("taco cat"))

