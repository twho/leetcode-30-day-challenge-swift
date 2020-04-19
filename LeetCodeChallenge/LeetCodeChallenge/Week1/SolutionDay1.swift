//
//  Day1-SingleNumber.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/single-number/
class SolutionDay1 {
    
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int:Bool]()
        for num in nums {
            if (dict[num] != nil) {
                dict[num] = false
            } else {
                dict[num] = true
            }
        }
        
        for key in dict.keys {
            if (dict[key] != false) {
                return key
            }
        }
        
        return -1
    }
}
