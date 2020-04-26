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

        var output = 0
        let _ = calculateLocalMaxLength(root, &output)
        return output - 1
    }
    /**
     This function solves the problem of calculating the longest one-way
     length that associated with a tree node. Let's define a leg as the
     one-way path that does not pass the root.
     
     - Parameter root:   The root node to start with.
     - Parameter output: The output tracks the longest path in the entire tree.
     */
    func calculateLocalMaxLength(_ root: TreeNode?, _ output: inout Int) -> Int {
        guard let root = root else { return 0 }

        // A local longest path is calculcated by adding up its longest left and right legs.
        let left = calculateLocalMaxLength(root.left, &output)
        let right = calculateLocalMaxLength(root.right, &output)
        let localLongestPath = left + right + 1
        
        // This helps obtain the longest path of the tree by comparing each caculation.
        output = max(output, localLongestPath)

        // A leg is caclulated by adding itself to its longer leg.
        // Note: The leg is defined to not pass its root node.
        return 1 + max(left, right)
    }
}
