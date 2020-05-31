//
//  MaySolDay12.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/single-element-in-a-sorted-array/
class MaySolDay12 {
    
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                set.remove(num)
            } else {
                set.insert(num)
            }
        }
        return set.removeFirst()
    }
}
