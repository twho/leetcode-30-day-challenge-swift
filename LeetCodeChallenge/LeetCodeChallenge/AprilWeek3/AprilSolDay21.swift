//
//  AprilSolDay21.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/530/week-3/3306/
class AprilSolDay21 {
    
    func leftMostColumnWithOne(_ binaryMatrix: BinaryMatrix) -> Int {
        let dim = binaryMatrix.dimensions()
        
        var x = 0
        var y = dim[1] - 1
        var currentLeftMost = -1
        while x < dim[0], y >= 0 {
            if y - 1 >= 0 && binaryMatrix.get(x, y - 1) == 1 {
                y -= 1
                currentLeftMost = y
            } else if x + 1 < dim[0] {
                x += 1
            } else {
                return binaryMatrix.get(x, y) == 1 ? y : currentLeftMost
            }
        }
        return -1
    }
}
