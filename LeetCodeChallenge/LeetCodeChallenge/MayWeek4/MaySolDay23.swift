//
//  MaySolDay23.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/interval-list-intersections/
class MaySolDay23 {
    
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        guard !A.isEmpty, !B.isEmpty else {
            return []
        }
        
        var output = [[Int]]()
        var aIdx = 0
        var bIdx = 0
        var last = [Int]()
        while aIdx < A.count || bIdx < B.count {
            if last.isEmpty {
                guard aIdx < A.count, bIdx < B.count else { break }
                
                if aIdx < A.count, A[aIdx][0] < B[bIdx][0] {
                    last = A[aIdx]
                    aIdx += 1
                } else {
                    last = B[bIdx]
                    bIdx += 1
                }
            } else {
                while (aIdx < A.count && A[aIdx][0] <= last[1]) ||
                            (bIdx < B.count && B[bIdx][0] <= last[1]) {
                    if aIdx < A.count, A[aIdx][0] <= last[1] {
                        output.append([max(last[0], A[aIdx][0]), min(last[1], A[aIdx][1])])
                        last = [min(last[0], A[aIdx][0]), max(last[1], A[aIdx][1])]
                        aIdx += 1
                    }
                    
                    if bIdx < B.count, B[bIdx][0] <= last[1] {
                        output.append([max(last[0], B[bIdx][0]), min(last[1], B[bIdx][1])])
                        last = [min(last[0], B[bIdx][0]), max(last[1], B[bIdx][1])]
                        bIdx += 1
                    }
                }
                last = []
            }
        }
        
        return output
    }
}
