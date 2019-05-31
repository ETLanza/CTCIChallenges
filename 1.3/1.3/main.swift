//
//  main.swift
//  1.3
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 URLify: Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters,and that you are given the "true" length of the string. (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)
 
 EXAMPLE
 Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"
 
 */

import Foundation

extension String {
    
    mutating func replaceSpacesWithPercentEncoding() {
        self = self.trimmingCharacters(in: .whitespaces)
        self = self.replacingOccurrences(of: " ", with: "%20")
    }
    
    mutating func replaceSpacesWithPercents() {
        var returnString = ""
        var spaceCount = 0
        
        for c in self {
            if c == " " {
                spaceCount += 1
            } else {
                if spaceCount > 0 {
                    while spaceCount > 0 {
                        returnString.append("%20")
                        spaceCount -= 1
                    }
                    returnString.append(c)
                } else {
                    returnString.append(c)
                }
            }
        }
        self = returnString
    }
}

var person = "Mr John Smith "
person.replaceSpacesWithPercentEncoding()
print(person)

var person2 = "Mr John Smith "
person.replaceSpacesWithPercents()
print(person)
