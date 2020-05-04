//
//  AprilSolDay20.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/21/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/
class AprilSolDay20 {
    
    func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
        guard preorder.count > 0 else { return nil }
        return bstFromPreorder(preorder, 0, preorder.count - 1)
    }
    
    private func bstFromPreorder(_ preorder: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        let root = TreeNode(preorder[start])
        
        if start + 1 <= end, preorder.count > 1 {
            var rightRootIdx = -1
            for idx in start+1...end {
                if preorder[idx] > preorder[start] {
                    rightRootIdx = idx
                    break
                }
            }
            
            if rightRootIdx == start + 1 {
                root.right = bstFromPreorder(preorder, rightRootIdx, end)
            } else if rightRootIdx == -1  {
                root.left = bstFromPreorder(preorder, start + 1, end)
            } else {
                root.right = bstFromPreorder(preorder, rightRootIdx, end)
                root.left = bstFromPreorder(preorder, start + 1, rightRootIdx - 1)
            }
        }
        return root
    }
}
