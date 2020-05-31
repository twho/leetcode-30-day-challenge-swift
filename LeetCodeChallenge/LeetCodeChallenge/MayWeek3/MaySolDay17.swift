//
//  MaySolDay17.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/find-all-anagrams-in-a-string/
class MaySolDay17 {
    
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        guard s.count >= p.count else { return [] }
        
        var output = [Int]()
        let arrP = Array(p), arrS = Array(s)
        
        var dictS = [Character : Int]()
        var dictP = dictS
        
        var idx = 0
        while idx < arrP.count {
            dictS[arrS[idx]] =  dictS[arrS[idx]] == nil ? 1 : dictS[arrS[idx]]! + 1
            dictP[arrP[idx]] =  dictP[arrP[idx]] == nil ? 1 : dictP[arrP[idx]]! + 1
            idx += 1
        }
        
        if dictS == dictP {
            output.append(0)
        }
        
        idx = 1
        while idx + arrP.count - 1 < arrS.count {
            dictS[arrS[idx - 1]]! -= 1
            if dictS[arrS[idx - 1]]! == 0 {
                dictS[arrS[idx - 1]] = nil
            }
            
            let temp = idx + arrP.count - 1
            dictS[arrS[temp]] =  dictS[arrS[temp]] == nil ? 1 : dictS[arrS[temp]]! + 1
            
            if dictS == dictP {
                output.append(idx)
            }
            
            idx += 1
        }
        
        return output
    }
}
