//
//  AprilSolDay6.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// https://leetcode.com/problems/group-anagrams/
class AprilSolDay6 {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String:[String]]()
        for str in strs {
            let key = String(str.sorted())
            if dict[key] != nil {
                dict[key]!.append(str)
            } else {
                dict[key] = [str]
            }
        }
        var output = [[String]]()
        for key in dict.keys {
            output.append(dict[key]!)
        }
        return output
    }
}
