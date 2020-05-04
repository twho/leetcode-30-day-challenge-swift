//
//  AprilSolDay22.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/27/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/subarray-sum-equals-k/
class AprilSolDay22 {
    
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var accumulates = Array(repeating: 0, count: nums.count)
        
        var output = 0
        var time = 0
        while time < nums.count {
            
            for i in time..<accumulates.count {
                accumulates[i] += nums[i - time]
                if accumulates[i] == k {
                    output += 1
                }
            }
            
            time += 1
        }
        
        return output
    }
}
