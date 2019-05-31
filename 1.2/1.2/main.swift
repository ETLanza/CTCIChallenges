//
//  main.swift
//  1.2
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 Check Permutation: Given two strings,write a method to decide if one is a permutation of the other.
 
 */

import Foundation

func checkForPermutationBetween(s1: String, s2: String) -> Bool {
    
    var s1Dict: [Character: Int] = [:]
    var s2Dict: [Character: Int] = [:]
    
    for c in s1 {
        if c == " " { continue }
        if let i = s1Dict[c] {
            s1Dict[c] = i + 1
        } else {
            s1Dict[c] = 1
        }
    }
    
    for c in s2 {
        if c == " " { continue }
        if let i = s2Dict[c] {
            s2Dict[c] = i + 1
        } else {
            s2Dict[c] = 1
        }
    }
    
    print(s1Dict)
    print(s2Dict)
    
    return s1Dict == s2Dict
}

print(checkForPermutationBetween(s1: "abcdd", s2: "abcd"))
print(checkForPermutationBetween(s1: "taco cat", s2: "tacotac"))
