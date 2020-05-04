//
//  AprilSolDay14.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3299/
class AprilSolDay14 {
    /*
     Constraints:
     
     1. 1 <= s.length <= 100
     2. s only contains lower case English letters.
     3. 1 <= shift.length <= 100
     4. shift[i].length == 2
     5. 0 <= shift[i][0] <= 1
     6. 0 <= shift[i][1] <= 100
     */
    func stringShift(_ s: String, _ shift: [[Int]]) -> String {
        var totalShift = 0
        for move in shift {
            if move[0] == 0 {
                totalShift -= move[1]
            } else if move[0] == 1 {
                totalShift += move[1]
            }
        }
        var output = Array(s)
        totalShift = totalShift%s.count
        if totalShift > 0 {
            output = Array(output[output.count - totalShift..<output.count]) + Array(output[0..<output.count - totalShift])
        } else {
            totalShift = abs(totalShift)
            output = Array(output[totalShift..<output.count]) + Array(output[0..<totalShift])
        }
        
        return String(output)
    }
}
