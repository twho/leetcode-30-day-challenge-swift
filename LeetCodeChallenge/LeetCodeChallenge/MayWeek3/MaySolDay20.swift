//
//  MaySolDay20.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/kth-smallest-element-in-a-bst/
class MaySolDay20 {
    
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        guard let root = root else { return -1 }
        var arr = [Int]()
        traverse(root, &arr)
        arr.sort()
        return arr[k - 1]
    }
    
    private func traverse(_ root: TreeNode?, _ arr: inout [Int]) {
        guard let root = root else { return }
        
        arr.append(root.val)

        if let left = root.left {
            traverse(left, &arr)
        }
        
        if let right = root.right {
            traverse(right, &arr)
        }
    }
}
