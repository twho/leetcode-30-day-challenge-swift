//
//  AprilSolDay29.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/1/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/binary-tree-maximum-path-sum/
/**
 Subproblems:
 
 1. How to calculate a one-way path that has the largest value?
 Let's define a leg as the one-way path that does not pass the
 local root, which is the starting nodepassed to the recursion.
 
 2. How to find the local max-value path of a node?
 It consists of up to two non-overlapping legs since it may or may
 not pass the root. That said, legs that share the same root may not
 be included simultaneously.
 
 3. How to find the max-value path of the entire tree?
 It will be obtained by comparing the local max-value paths.
 */
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
        
        let largestLegValue = max(root.val + leftSum, root.val + rightSum, root.val)
        
        /**
         This comparison is trying to find the local maximum value staring from
         the local root node.
         */
        let localMaxValue = max(root.val + rightSum + leftSum, largestLegValue)
        
        /**
         The comparison here is trying to get the final output, which is the
         max-value path of the entire tree.
         */
        output = max(output, localMaxValue)
        
        /**
         The return value here is the leg value, aka the one-way path that has the largest
         value. Because there might be negative values in the legs, we have to first decide
         if we want to include a leg value. If we do, we want to take the leg with larger value.
         */
        return largestLegValue
    }
}
