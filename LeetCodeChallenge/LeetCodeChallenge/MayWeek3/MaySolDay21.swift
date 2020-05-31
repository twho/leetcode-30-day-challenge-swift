//
//  MaySolDay21.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/count-square-submatrices-with-all-ones/
class MaySolDay21 {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var output = 0
        var dp = matrix
        for x in 0..<matrix.count {
            for y in 0..<matrix[x].count {
                if matrix[x][y] == 1 {
                    output += 1
                    
                    if x > 0, y > 0 {
                        dp[x][y] = min(dp[x - 1][y], dp[x][y - 1], dp[x - 1][y - 1]) + 1
                        output += dp[x][y] > 1 ? dp[x][y] - 1 : 0
                    }
                }
            }
        }
        return output
    }
}
