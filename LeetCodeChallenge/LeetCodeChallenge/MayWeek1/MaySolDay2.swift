//
//  MaySolDay2.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/3/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/jewels-and-stones/
class MaySolDay2 {
    
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var set = Set<Character>()
        for ch in J {
            set.insert(ch)
        }
        
        var output = 0
        for ch in S {
            if set.contains(ch) {
                output += 1
            }
        }
        
        return output
    }
}
