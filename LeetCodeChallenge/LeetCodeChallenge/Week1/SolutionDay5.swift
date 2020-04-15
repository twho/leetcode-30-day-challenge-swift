//
//  SolutionDay5.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
class SolutionDay5 {
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }
        
        var preVal = prices[0]
        var val = 0
        for idx in 1...prices.count-1 {
            if prices[idx] > preVal {
                val += prices[idx] - preVal
            }
            preVal = prices[idx]
        }
        return val
    }
}
