//
//  MaySolDay31.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 6/4/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/edit-distance/
class MaySolDay31 {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let row  = word1.count + 1
        let column = word2.count + 1
        var dp = Array(repeating: Array(repeating: 0, count: column), count: row)
        let  array1 =  Array(word1)
        let  array2 = Array(word2)
        
        for i in 0..<row{
            for j in 0..<column {
                if i == 0 {
                    dp[0][j] = j
                }else if j == 0 {
                    dp[i][0] = i
                }else if array1[i - 1] == array2[j - 1]{
                    dp[i][j] = dp[i - 1][j - 1]
                }else{
                     dp[i][j] = 1 + min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1])
                }
            }
        }
        return dp[row - 1][column - 1]
    }
}
