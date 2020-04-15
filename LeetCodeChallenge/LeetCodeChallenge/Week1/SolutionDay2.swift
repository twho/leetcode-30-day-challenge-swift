//
//  SolutionDay2.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/happy-number/
class SolutionDay2 {
    
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var current = n
        while current > 0, !set.contains(current) {
            current = operateHappyNum(current, &set)
        }
        return current == 1
    }
    
    func operateHappyNum(_ num: Int, _ set: inout Set<Int>) -> Int {
        var num = num
        while (num % 10 == 0) {
            num = num / 10
        }
        set.insert(num)
        
        var sum = 0
        while (num > 0) {
            let last = num % 10
            sum += last * last
            num = num / 10
        }
        return sum
    }
}
