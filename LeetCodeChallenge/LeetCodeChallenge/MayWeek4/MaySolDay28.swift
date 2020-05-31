//
//  MaySolDay28.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/counting-bits/
class MaySolDay28 {
    
    func countBits(_ num: Int) -> [Int] {
        var output = [Int]()
        for i in 0...num {
            output.append(helper(i))
        }
        return output
    }
    
    func helper(_ num: Int) -> Int {
        var count = 0
        var input = num
        while input != 0 {
            input = input & (input - 1)
            count += 1
        }
        return count
    }
}
