//
//  AprilSolDay9.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/backspace-string-compare/
class AprilSolDay9 {
    
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        return formatString(S) == formatString(T)
    }
    
    func formatString(_ s: String) -> String {
        let arr = Array(s)
        var output = ""
        var back = 0
        for idx in 0..<arr.count {
            let lastIdx = arr.count - 1 - idx
            if arr[lastIdx] == "#" {
                back += 1
            } else {
                if back > 0{
                    back -= 1
                } else {
                    output += String(arr[lastIdx])
                }
            }
        }
        return output
    }
}
