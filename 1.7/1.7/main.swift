//
//  main.swift
//  1.7
//
//  Created by Eric Lanza on 5/30/19.
//  Copyright © 2019 ETLanza. All rights reserved.
//

/*
 
 Rotate Matrix: Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?
 
 */

import Foundation

func rotate90Degrees(matrix: inout [[Int]]) {

    var x = 0
    let n = matrix.count
    
    
    while x < n / 2 {
        var y = x
        while y < n - x - 1 {
            
            let temp = matrix[x][y]
            
            matrix[x][y] = matrix[y][n - 1 - x]
            
            matrix[y][n - 1 - x] = matrix[n - 1 - x][n - 1 - y]
            
            matrix[n - 1 - x][n - 1 - y] = matrix[n - 1 - y][x]
            
            matrix[n - 1 - y][x] = temp
            
            y += 1
        }
        x += 1
    }
}

var matrix = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]

print(matrix[0])
print(matrix[1])
print(matrix[2])
print(matrix[3])

rotate90Degrees(matrix: &matrix)

print(matrix[0])
print(matrix[1])
print(matrix[2])
print(matrix[3])



