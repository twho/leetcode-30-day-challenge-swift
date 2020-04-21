//
//  SolutionDay15.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/20/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/product-of-array-except-self/
class SolutionDay15 {
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var foundFirstZero = false
        var total = 1
        for num in nums {
            if !foundFirstZero && num == 0 {
                foundFirstZero = true
            } else {
                total = total * num
            }
        }
        
        var output = [Int]()
        if foundFirstZero && total == 0 {
            return Array(repeating: 0, count: nums.count)
        }
        
        for num in nums {
            if foundFirstZero {
                if num == 0 {
                    output.append(total)
                } else {
                    output.append(0)
                }
            } else {
                output.append(total/num)
            }
        }
        return output
    }
}
