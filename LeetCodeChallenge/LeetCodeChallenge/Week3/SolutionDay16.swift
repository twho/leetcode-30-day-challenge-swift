//
//  SolutionDay16.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/20/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/valid-parenthesis-string/
// Refer to LeiHao0: https://leetcode.com/problems/valid-parenthesis-string/discuss/582051/Swift-0ms-100-or-1line-94.44
class SolutionDay16 {
    
    func checkValidString(_ s: String) -> Bool {
        var stack = [Character]()
        for c in s {
            if c == "(" || c == "*"  {
                stack.append(c)
            } else {
                if let idx = stack.lastIndex(of: "(") {
                    stack.remove(at: idx)
                } else if let idx = stack.lastIndex(of: "*") {
                    stack.remove(at: idx)
                } else {
                    return false
                }
            }
        }
        
        // popLast() time complexity = O(1)
        while let last = stack.popLast() {
            if last == "(" {
                return false
            } else if let leftIdx = stack.lastIndex(of: "(") {
                stack.remove(at: leftIdx)
            }
        }
        return stack.isEmpty
    }
}
