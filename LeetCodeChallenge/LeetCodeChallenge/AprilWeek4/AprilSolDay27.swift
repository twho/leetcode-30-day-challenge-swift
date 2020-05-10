//
//  AprilSolDay27.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/maximal-square/
class AprilSolDay27 {
    
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        guard matrix.count > 0, matrix[0].count > 0 else { return 0 }
        var dp = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        var maxSideLength = 0
        for x in 0..<matrix.count {
            for y in 0..<matrix[x].count {
                if matrix[x][y] == "1" {
                    if x > 0, y > 0 {
                        dp[x][y] = min(dp[x - 1][y - 1], dp[x - 1][y], dp[x][y - 1] ) + 1
                    } else {
                        dp[x][y] = Int(String(matrix[x][y]))!
                    }
                    maxSideLength = max(maxSideLength, dp[x][y])
                }
            }
        }
        return maxSideLength*maxSideLength
    }
}
