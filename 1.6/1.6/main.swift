//
//  main.swift
//  1.6
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 String Compression: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a - z).
 
 */

import Foundation

extension String {
    mutating func compress() {
        
        var charTuples: [(Character, Int)] = []
        var tempTuple: (Character, Int) = (Character(" "), 0)
        var totalCharCount = 0
        var newStringCharCount = 0
        
        for c in self {
            totalCharCount += 1
            if c == tempTuple.0 {
                tempTuple.1 += 1
            } else if tempTuple == (Character(" "), 0) {
                tempTuple = (c, 1)
            } else {
                charTuples.append(tempTuple)
                newStringCharCount += 2
                tempTuple = (c, 1)
            }
        }
        
        charTuples.append(tempTuple)
        newStringCharCount += 2
        
        if totalCharCount <= newStringCharCount {
            return
        } else {
            self = charTuples.map { return String($0.0) + String($0.1) }.joined()
        }
    }
}

var test = "aabcccccaaa"
test.compress()
print(test)

var test2 = "aabbccddaabbccdd"
test2.compress()
print(test2)

