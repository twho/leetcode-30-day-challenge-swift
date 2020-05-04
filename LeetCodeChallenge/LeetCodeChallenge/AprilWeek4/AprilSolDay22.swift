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
        var output = 0
        var dict = [0:1] // [sum:count]
        
        var sum = 0
        for num in nums {
            sum += num
            
            /**
             Let's define prevSum = sum - k
             If sum is larger than target k, try to find if sum - k has
             occurred in the iteration. If it has, retrieve the times when
             sum == prevSum. Since we can exclude those subarrays that have
             a sum of prevSum, the count of subarray has target k can be
             increased by the count of those subarrays.
             */
            if let count = dict[sum - k] {
                output += count
            }
            
            dict[sum] = (dict[sum] ?? 0) + 1
        }
        
        return output
    }
}
