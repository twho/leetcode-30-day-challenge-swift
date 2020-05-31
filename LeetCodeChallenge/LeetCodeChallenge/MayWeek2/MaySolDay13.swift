//
//  MaySolDay13.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/remove-k-digits/
class MaySolDay13 {
    
    func removeKdigits(_ num: String, _ k: Int) -> String {
        if k >= num.count || num.count < 1 { return "0" }
        let chars = Array(num)
        var stackChar = [chars[0]], l = k, i = 1
        while i < chars.count {
            if l > 0, let v = stackChar.last, v > chars[i] {
                stackChar.popLast(); l -= 1
            } else {
                stackChar.append(chars[i]); i += 1
            }
        }
        for _ in 0..<l { stackChar.popLast() }
        while let c = stackChar.first, c == "0" {
            stackChar.removeFirst()
        }
        if stackChar.isEmpty { stackChar.append("0") }
        return String(stackChar)
    }
}
