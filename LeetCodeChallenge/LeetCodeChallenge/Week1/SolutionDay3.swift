//
//  SolutionDay3.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/maximum-subarray/
class SolutionDay3 {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        
        if nums.count == 1 {
            return nums[0]
        }
        
        var localMax = nums[0]
        var result = localMax
        for idx in 1...nums.count - 1 {
            localMax = max(nums[idx] + localMax, nums[idx])
            result = max(localMax, result)
        }
        return result
    }
}
