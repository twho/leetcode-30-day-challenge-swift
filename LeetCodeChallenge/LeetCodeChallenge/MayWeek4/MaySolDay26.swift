//
//  MaySolDay26.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/contiguous-array/
class MaySolDay26 {
    
    func findMaxLength(_ nums: [Int]) -> Int {
        var dict = [0:-1]
        
        var maxCount = 0
        var count = 0
        for idx in 0..<nums.count {
            if nums[idx] == 0 {
                count -= 1
            } else if nums[idx] == 1 {
                count += 1
            }
            
            if dict[count] == nil {
                dict[count] = idx
            } else {
                maxCount = max(maxCount, idx - dict[count]!)
            }
        }
        
        return maxCount
    }
}
