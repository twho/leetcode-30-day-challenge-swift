//
//  AprilSolDay29.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/1/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/binary-tree-maximum-path-sum/
class AprilSolDay29 {
    
    func maxPathSum(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var output = Int.min
        let _ = getSum(root, &output)
        return output
    }
    
    private func getSum(_ root: TreeNode?, _ output: inout Int) -> Int {
        guard let root = root else { return 0 }
        
        var leftSum = 0
        var rightSum = 0
        if let left = root.left {
            leftSum = getSum(left, &output)
        }
        
        if let right = root.right {
            rightSum = getSum(right, &output)
        }
       
        output = max(output, root.val, root.val + leftSum, root.val + rightSum, root.val + rightSum + leftSum)
        return max(root.val + leftSum, root.val + rightSum, root.val)
    }
}
