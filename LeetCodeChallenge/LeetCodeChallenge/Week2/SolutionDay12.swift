//
//  SolutionDay12.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/last-stone-weight/
class SolutionDay12 {
    /*
     Note:
     
     1. 1 <= stones.length <= 30
     2. 1 <= stones[i] <= 1000
     */
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var sorted = stones.sorted()
        
        while sorted.count > 1 {
            let last1 = sorted.removeLast()
            let last2 = sorted.removeLast()
            
            if last1 != last2 {
                sorted.append(last1 - last2)
                sorted.sort()
            }
        }
        
        return sorted.count > 0 ? sorted[0] : 0
    }
}
