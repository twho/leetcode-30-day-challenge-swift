//
//  MaySolDay27.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/possible-bipartition/
class MaySolDay27 {
    
    func possibleBipartition(_ N: Int, _ dislikes: [[Int]]) -> Bool {
        graph = Array(repeating: [Int](), count: N+1)
        for dislike in dislikes {
            let d0 = dislike[0], d1 = dislike[1]
            graph[d0].append(d1)
            graph[d1].append(d0)
        }
        for node in 1...N {
            if color[node] == nil && !dfs(node, 0) { return false }
        }
        return true
    }
    
    private var graph = [[Int]]()
    private var color = [Int: Int]()
    private func dfs(_ node: Int, _ c: Int) -> Bool {
        if let v = color[node] { return v == c }
        color[node] = c
        for i in graph[node] {
            if !dfs(i, c ^ 1) { return false }
        }
        return true
    }
}
