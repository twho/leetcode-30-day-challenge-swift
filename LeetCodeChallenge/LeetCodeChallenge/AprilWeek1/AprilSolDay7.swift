//
//  AprilSolDay7.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3289/
class AprilSolDay7 {
    
    func countElements(_ arr: [Int]) -> Int {
        let set = Set(arr)
        var output = 0
        for num in arr {
            if set.contains(num + 1) {
                output += 1
            }
        }
        return output
    }
}
