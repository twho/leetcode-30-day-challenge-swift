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
        guard num.count > 0 && k < num.count else { return "0" }
        
        let arr = Array(num)
        var stackChar = [Character]()
        var count = k
        var i = 0
        while i < arr.count {
            // Pop the elements if they are not in the increasing order
            while count > 0, let last = stackChar.last, last > arr[i] {
                stackChar.removeLast()
                count -= 1
            }
            stackChar.append(arr[i])
            i += 1
        }
        
        while count > 0 {
            stackChar.removeLast()
            count -= 1
        }
        
        // Find leading 0s
        while let first = stackChar.first, first == "0" {
            stackChar.removeFirst()
        }
        
        return stackChar.isEmpty ? "0" : String(stackChar)
    }
}
