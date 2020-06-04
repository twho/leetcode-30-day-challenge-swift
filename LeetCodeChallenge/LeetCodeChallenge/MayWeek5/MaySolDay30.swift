//
//  MaySolDay30.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 6/4/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/k-closest-points-to-origin/
class MaySolDay30 {
    func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
        let sorted = points.sorted { getDistance($0) < getDistance($1) }
        return Array(sorted[0..<K])
    }
    
    private func getDistance(_ point: [Int]) -> Int {
        return point[0] * point[0] + point[1] * point[1]
    }
}
