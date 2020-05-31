//
//  MaySolDay18.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/permutation-in-string/
class MaySolDay18 {
    
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var dict = [Character:Int]()
        for ch in s1 {
            dict[ch] = dict[ch] == nil ? 1 : dict[ch]! + 1
        }
        
        let arrS = Array(s2)
        var idx = 0
        while idx < arrS.count {
            let ch = arrS[idx]
            if dict[ch] != nil {
                var temp = dict
                var tempIdx = idx
                while tempIdx < arrS.count {
                    if temp[arrS[tempIdx]] == nil {
                        break
                    } else {
                        temp[arrS[tempIdx]]! -= 1
                        if temp[arrS[tempIdx]]! == 0 {
                            temp[arrS[tempIdx]] = nil
                        }
                    }
                    tempIdx += 1
                }
                
                if temp.isEmpty {
                    return true
                }
                
            }
            idx += 1
        }
        
        return false
    }
}
