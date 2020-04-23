//
//  SolutionDay20.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/
class SolutionDay20 {
    
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard preorder.count > 0 else { return nil }
        
        let root = TreeNode(preorder[0])
        if preorder.count > 0 {
            var rightRootIdx = -1
            for idx in 1..<preorder.count {
                if preorder[idx] > preorder[0] {
                    rightRootIdx = idx
                    break
                }
            }
            
            if rightRootIdx == 1 {
                root.right = bstFromPreorder(Array(preorder[rightRootIdx..<preorder.count]))
            } else if rightRootIdx == -1 {
                root.left = bstFromPreorder(Array(preorder[1..<preorder.count]))
            } else {
                root.right = bstFromPreorder(Array(preorder[rightRootIdx..<preorder.count]))
                root.left = bstFromPreorder(Array(preorder[1..<rightRootIdx]))
            }
        }
        return root
    }
}
