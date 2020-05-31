//
//  MaySolDay11.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/flood-fill/
class MaySolDay11 {
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var newImg = image
        let oldColor = image[sr][sc]
        dfs(sr, sc, &newImg, newColor, oldColor)
        return newImg
    }
    
    private func dfs(_ x: Int, _ y: Int, _ image: inout [[Int]], _ newColor: Int, _ oldColor: Int) {
        if image[x][y] != oldColor {
            return
        }
        image[x][y] = newColor
        
        if x + 1 < image.count, image[x + 1][y] != newColor {
            dfs(x + 1, y, &image, newColor, oldColor)
        }
        
        if y + 1 < image[x].count, image[x][y + 1] != newColor {
            dfs(x, y + 1, &image, newColor, oldColor)
        }
        
        if x - 1 >= 0, image[x - 1][y] != newColor {
            dfs(x - 1, y, &image, newColor, oldColor)
        }
        
        if y - 1 >= 0, image[x][y - 1] != newColor {
            dfs(x, y - 1, &image, newColor, oldColor)
        }
    }
}
