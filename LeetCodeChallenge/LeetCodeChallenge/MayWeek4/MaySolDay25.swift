//
//  MaySolDay25.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/uncrossed-lines/
class MaySolDay25 {
    
    func maxUncrossedLines(_ A: [Int], _ B: [Int]) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: B.count+1), count: A.count+1)
        for i in 1...A.count {
            for j in 1...B.count {
                dp[i][j] = (A[i-1] == B[j-1]) ? (1 + dp[i-1][j-1]) : max(dp[i-1][j], dp[i][j-1])
            }
        }
        return dp[A.count][B.count]
    }
}
