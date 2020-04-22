//
//  SolutionDay19.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/search-in-rotated-sorted-array/
class SolutionDay19 {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
        
        var originalStart = 0
        for idx in 0..<nums.count {
            if idx > 0, nums[idx] < nums[idx - 1] {
                originalStart = idx
                break
            }
        }
        
        var start = 0
        var end = nums.count - 1
        if originalStart != 0 {
            if target == nums[originalStart] {
                return originalStart
            } else if target >= nums[start] {
                end = originalStart - 1
            } else if target <= nums[end], target > nums[originalStart] {
                start = originalStart + 1
            }
        }
        
        while start <= end {
            var mid = (start + end) / 2
            
            if target == nums[mid] {
                return mid
            } else if target < nums[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        
        return -1
    }
}
