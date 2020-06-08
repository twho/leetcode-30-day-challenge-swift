//
//  MaySolDay15.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/maximum-sum-circular-subarray/
class MaySolDay15 {
    func maxSubarraySumCircular(_ A: [Int]) -> Int {
        guard A.count > 0 else { return 0 }
        if A.count == 1 {
            return A[0]
        }
        
        var output = Int.min
        var current = A[0]
        for i in 1..<A.count {
            current = max(A[i] + current, A[i])
            output = max(output, current)
        }
        
        var right = A
        for i in 1..<A.count {
            let rightIdx = A.count - 1 - i
            right[rightIdx] = right[rightIdx + 1] + A[rightIdx]
        }
        
        var maxRight = right
        for i in 1..<A.count {
            let rightIdx = A.count - 1 - i
            maxRight[rightIdx] = max(maxRight[rightIdx + 1], right[rightIdx])
        }
        
        var leftSum = 0
        for i in 0..<A.count - 2 {
            leftSum += A[i]
            output = max(output, leftSum + maxRight[i + 2])
        }
        
        return output
    }
}
