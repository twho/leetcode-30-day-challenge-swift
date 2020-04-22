//
//  SolutionDay18.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/minimum-path-sum/
class SolutionDay18 {
    
    func minPathSum(_ grid: [[Int]]) -> Int {
        var matrix = grid
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if i > 0 && j > 0 {
                    matrix[i][j] += min(matrix[i-1][j], matrix[i][j-1])
                } else if i > 0 {
                    matrix[i][j] += matrix[i-1][j]
                } else if j > 0 {
                    matrix[i][j] += matrix[i][j-1]
                }
            }
        }
        
        return matrix[matrix.count - 1][matrix[0].count - 1]
    }
}
