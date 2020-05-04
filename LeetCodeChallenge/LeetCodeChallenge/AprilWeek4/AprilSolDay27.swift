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
        var result = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == "1" {
                    if i > 0, j > 0 {
                        dp[i][j] = min(dp[i-1][j-1], dp[i-1][j], dp[i][j - 1] ) + 1
                    } else {
                        dp[i][j] = Int(String(matrix[i][j]))!
                    }
                    result = max(result, dp[i][j])
                }
            }
        }
        return result*result
    }
}
