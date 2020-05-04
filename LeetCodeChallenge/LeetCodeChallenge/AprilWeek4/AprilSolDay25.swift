//
//  AprilSolDay25.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/27/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/jump-game/
class AprilSolDay25 {
    
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        
        var idx = 0
        var maxJump = 0
        while idx < nums.count {
            if idx > maxJump {
                return false
            }
            maxJump = max(maxJump, nums[idx] + idx)
            idx += 1
        }
        return true
    }
}
