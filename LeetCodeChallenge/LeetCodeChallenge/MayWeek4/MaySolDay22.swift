//
//  MaySolDay22.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/sort-characters-by-frequency/
class MaySolDay22 {
    
    func frequencySort(_ s: String) -> String {
        var freqDict = [Character:Int]()
        var map = [Int:[Character]]()
        var output = [Character]()
        for ch in s {
            freqDict[ch] = freqDict[ch] == nil ? 1 : freqDict[ch]! + 1
        }
        
        for key in freqDict.keys {
            if map[freqDict[key]!] != nil {
                map[freqDict[key]!]!.append(key)
            } else {
                map[freqDict[key]!] = [key]
            }
        }
        
        let sortedKeys = map.keys.sorted(by: >)
        for key in sortedKeys {
            for value in map[key]! {
                for _ in 0..<key {
                    output.append(value)
                }
            }
        }
        return String(output)
    }
}
