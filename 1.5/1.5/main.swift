//
//  main.swift
//  1.5
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 One Away: There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 EXAMPLE
 pale, ple -> true
 pales, pale -> true
 pale, bale -> true
 pale, bake -> false
 
 */

import Foundation

func checkIfOneEditAway(_ s1: String, _ s2: String) -> Bool {
    
    var s1Count = 0
    var s2Count = 0
    var s1Array: [Character] = []
    var hasDiff = false
    
    for c in s1 {
        s1Count += 1
        s1Array.append(c)
    }
    
    for c in s2 {
        s2Count += 1
        if s1Count + 1 < s2Count {
            return false
        }
        
        if s2Count > s1Count {
            s2Count += 1
            continue
        }
        
        if s1Array[s2Count - 1] != c {
            if s1Count == s2Count && hasDiff {
                return false
            } else if s1Count == s2Count {
                continue
            }
            if s1Array[s2Count] != c {
                if hasDiff {
                    return false
                } else {
                    hasDiff = true
                }
            }
        }
    }
    
    if hasDiff && s1Count - s2Count != 0 {
        return false
    }
    
    return true
}


