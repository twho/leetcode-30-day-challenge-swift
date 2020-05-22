//
//  MaySolDay9.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/valid-perfect-square/
class MaySolDay9 {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num == 1 {
            return true
        }
        
        for number in 1...num/2 {
            let result = number * number
            if result >= num {
                return result == num
            }
        }
        
        return false
    }
}
