//
//  AprilSolDay23.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/27/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/bitwise-and-of-numbers-range/
// https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html
class AprilSolDay23 {
    
    func rangeBitwiseAnd(_ m: Int, _ n: Int) -> Int {
        if m == 0 {
            return 0
        }
        
        var m = m
        var n = n
        var factor = 0
        
        while m != n {
            m >>= 1
            n >>= 1
            factor += 1
        }
        
        return m << factor
    }
}
