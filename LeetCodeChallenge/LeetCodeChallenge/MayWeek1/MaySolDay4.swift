//
//  MaySolDay4.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/7/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/number-complement/
class MaySolDay4 {
    
    func findComplement(_ num: Int) -> Int {
        var i = 1
        
        while i <= num {
            i <<= 1
        }
        
        return (i - 1) ^ num
    }
}
