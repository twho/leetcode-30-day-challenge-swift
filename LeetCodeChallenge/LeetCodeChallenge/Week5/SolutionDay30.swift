//
//  SolutionDay30.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/1/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//


// Original link is blocked. Refer to other developer's blog.
// https://thefellowprogrammer.blogspot.com/2020/04/check-if-string-is-valid-sequence-from.html
class SolutionDay30 {
    
    func isValidSequence(_ root: TreeNode?, _ arr: [Int]) -> Bool {
        var current = [Int]()
        return isValidSequence(root, &current, arr)
    }
    
    private func isValidSequence(_ root: TreeNode?, _ current: inout [Int], _ target: [Int]) -> Bool {
        guard let root = root else {
            return false
        }
        
        current.append(root.val)
        if let left = root.left, let right = root.right {
            return isValidSequence(left, &current, target) || isValidSequence(right, &current, target)
        } else if let left = root.left {
            return isValidSequence(left, &current, target)
        }  else if let right = root.right {
            return isValidSequence(right, &current, target)
        } else {
            return current == target
        }
    }
}
