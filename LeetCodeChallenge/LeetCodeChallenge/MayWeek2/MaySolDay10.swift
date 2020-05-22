//
//  MaySolDay10.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/find-the-town-judge/
class MaySolDay10 {
    
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if N == 1, trust.count == 0 {
            return 1
        }
        
        var dict = [Int:Set<Int>]()
        var nojudges = Set<Int>()
        var judge = -1
        for arr in trust {
            nojudges.insert(arr[0])
            if dict[arr[1]] == nil {
                dict[arr[1]] = Set([arr[0]])
            } else {
                dict[arr[1]]!.insert(arr[0])
            }
            
            if dict[arr[1]]!.count == N - 1 {
                judge = arr[1]
            }
        }
        
        return !nojudges.contains(judge) ? judge : -1
    }
}
