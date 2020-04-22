//
//  SolutionDay17.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/number-of-islands/
class SolutionDay17 {
    
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        var matrix = grid
        for x in 0..<matrix.count {
            for y in 0..<matrix[x].count {
                if matrix[x][y] == "1" {
                    count += 1
                    findAdjacentIslands(x, y, &matrix)
                }
            }
        }
        return count
    }
    
    func findAdjacentIslands(_ x: Int, _ y: Int, _ matrix: inout [[Character]]) {
        matrix[x][y] = "0"
        
        if x + 1 < matrix.count, matrix[x + 1][y] == "1" {
            findAdjacentIslands(x + 1, y, &matrix)
        }
        
        if y + 1 < matrix[x].count, matrix[x][y + 1] == "1" {
            findAdjacentIslands(x, y + 1, &matrix)
        }
        
        if y - 1 >= 0, matrix[x][y - 1] == "1" {
            findAdjacentIslands(x, y - 1, &matrix)
        }
        
        if x - 1 >= 0, matrix[x - 1][y] == "1" {
            findAdjacentIslands(x - 1, y, &matrix)
        }
    }
}

