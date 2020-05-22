//
//  MaySolDay8.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/check-if-it-is-a-straight-line/
class MaySolDay8 {
    
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        guard coordinates.count > 1 else { return false }
        
        if coordinates.count == 2 {
            return true
        }
        
        let vertical = (coordinates[1][0] - coordinates[0][0]) == 0
        let horizontal = (coordinates[1][1] - coordinates[0][1]) == 0
        
        let slope = (horizontal || vertical) ?
                    0 : (coordinates[1][0] - coordinates[0][0])/(coordinates[1][1] - coordinates[0][1])
        for idx in 2..<coordinates.count {
            if horizontal && vertical {
                return false
            } else if horizontal {
                if (coordinates[idx][1] != coordinates[0][1]) {
                    return false
                }
            } else if vertical {
                if (coordinates[idx][0] != coordinates[0][0]) {
                    return false
                }
            } else {
                if coordinates[idx][0] == coordinates[0][0] || coordinates[idx][1] == coordinates[0][1] || (coordinates[idx][0] - coordinates[0][0])/(coordinates[idx][1] - coordinates[0][1]) != slope {
                return false
            }
            }
            
        }
        
        return true
    }
}
