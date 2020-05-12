//
//  MaySolDay6.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/11/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/majority-element/
class MaySolDay6 {
    
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int:Int]()
        
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
            
            if dict[num]! > nums.count/2 {
                return num
            }
        }
        
        return -1
    }
}
