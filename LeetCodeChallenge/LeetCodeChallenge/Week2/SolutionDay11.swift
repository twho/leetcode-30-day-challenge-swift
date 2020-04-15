//
//  SolutionDay11.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/diameter-of-binary-tree/
class SolutionDay11 {
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let length = calculateMaxLength(root.left) + calculateMaxLength(root.right)
        return max(length, diameterOfBinaryTree(root.left), diameterOfBinaryTree(root.right))
    }
    
    func calculateMaxLength(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return 1 + max(calculateMaxLength(root.left), calculateMaxLength(root.right))
    }
}
