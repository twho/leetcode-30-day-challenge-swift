//
//  SolutionDay19.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/search-in-rotated-sorted-array/
// The solution's runtime complexity must be in the order of O(log n).
class SolutionDay19 {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
        
        var start = 0
        var end = nums.count - 1
        while start <= end {
            let mid = start + (end - start) / 2
            let midVal = nums[mid]
            
            if target == midVal {
                return mid
            } else if target == nums[start] {
                return start
            } else if target == nums[end] {
                return end
            } else if midVal > nums[start] {
                // If it falls into this condition, it means the first half of
                // the array is not rotated. Therefore, we can decide if the
                // target falls into the first half or not.
                if target < midVal, target > nums[start] {
                    end = mid - 1
                } else {
                    start = mid + 1
                }
            } else {
                // If it falls into this condition, it means the second half of
                // the array is not rotated. Therefore, we can decide if the
                // target falls into the second half or not.
                if target > midVal, target < nums[end] {
                    start = mid + 1
                } else {
                    end = mid - 1
                }
            }
        }
        
        return -1
    }
}
