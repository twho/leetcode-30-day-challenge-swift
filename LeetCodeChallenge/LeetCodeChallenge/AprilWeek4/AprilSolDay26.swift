//
//  AprilSolDay26.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/longest-common-subsequence/
class AprilSolDay26 {
    
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        guard text1.count > 0, text2.count > 0 else { return 0 }
        
        let arr1 = Array(text1)
        let arr2 = Array(text2)
        var dp = Array(repeating: Array(repeating: 0, count: arr2.count), count: arr1.count)
        for i in 0..<arr1.count {
            for j in 0..<arr2.count {
                let idx1 = arr1.count - 1 - i
                let idx2 = arr2.count - 1 - j
                if arr1[idx1] == arr2[idx2] {
                    if i > 0, j > 0 {
                        dp[idx1][idx2] += dp[idx1 + 1][idx2 + 1]
                    }
                    dp[idx1][idx2] += 1
                } else {
                    let accum1 = i > 0 ? dp[idx1 + 1][idx2] : 0
                    let accum2 = j > 0 ? dp[idx1][idx2 + 1] : 0
                    dp[idx1][idx2] += max(accum1, accum2)
                }
            }
        }
        return dp[0][0]
    }
}

// Recursive solution: easy to understand, exceeds the time limit though.
class RescursiveSolution {
    
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        return longestCommonSubsequence(Array(text1), Array(text2), 0, 0)
    }
    
    func longestCommonSubsequence(_ arr1: [Character], _ arr2: [Character], _ idx1: Int, _ idx2: Int) -> Int {
        if idx1 >= arr1.count || idx2 >= arr2.count {
            return 0
        }
        
        if arr1[idx1] == arr2[idx2] {
            return 1 + longestCommonSubsequence(arr1, arr2, idx1 + 1, idx2 + 1)
        } else {
            return max(longestCommonSubsequence(arr1, arr2, idx1, idx2 + 1), longestCommonSubsequence(arr1, arr2, idx1 + 1, idx2))
        }
    }
}
