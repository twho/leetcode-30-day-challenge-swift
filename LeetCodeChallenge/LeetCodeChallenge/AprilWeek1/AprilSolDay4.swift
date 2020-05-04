//
//  AprilSolDay4.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/move-zeroes/
class AprilSolDay4 {
    
    func moveZeroes(_ nums: inout [Int]) {
        var idx = 0
        var count = 0
        while idx < nums.count, count < nums.count {
            if nums[idx] == 0 {
                nums.remove(at: idx)
                nums.append(0)
            } else {
                idx += 1
            }
            count += 1
        }
    }
}
