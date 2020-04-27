//
//  SolutionDay13.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/contiguous-array/
class SolutionDay13 {
    
    func findMaxLength(_ nums: [Int]) -> Int {
        /**
         The count before we enter the array is 0. The index
         before we enter the array is noted as -1.
         */
        var dict = [0 : -1] // [count:index]
        var count = 0
        
        // The maximum length (longest) is set to 0 initially.
        var maxLength = 0
        for idx in 0..<nums.count {
            /**
             We increase the count by 1 if it's 1 and decrease
             the count by 1 if it's 0.
             */
            count += nums[idx] == 0 ? -1 : 1
            
            if dict[count] == nil {
                // If the current count never appeared, record it.
                dict[count] = idx
            } else {
                /**
                 If the current count appeared before, calculate the
                 distance between current index and the count's first
                 appearance so we can get the longest subarray that
                 has net increase of 0 to the count.
                 
                 Finally, compare it to the maxLength that we are
                 tracking to get the longest throughout the array.
                 */
                maxLength = max(maxLength, idx - dict[count]!)
            }
        }
        
        return maxLength
    }
}
