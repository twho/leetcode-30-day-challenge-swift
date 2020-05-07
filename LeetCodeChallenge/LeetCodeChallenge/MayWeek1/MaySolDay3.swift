//
//  MaySolDay3.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/7/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/ransom-note/
class MaySolDay3 {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character:Int]()
        for ch in magazine {
            if dict[ch] == nil {
                dict[ch] = 1
            } else {
                dict[ch]! += 1
            }
        }
        
        for ch in ransomNote {
            if dict[ch] == nil {
                return false
            } else {
                dict[ch]! -= 1
                if dict[ch]! == 0 {
                    dict[ch] = nil
                }
            }
        }
        
        return true
    }
}
