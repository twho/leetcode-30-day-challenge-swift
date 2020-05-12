//
//  MaySolDay7.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/11/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/cousins-in-binary-tree/
class MaySolDay7 {
    
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let root = root else { return false }
        
        var setArr = [Set<Int>]()
        return findCousins(root, 0, x, y, &setArr)
    }
    
    private func findCousins(_ root: TreeNode?, _ level: Int, _ x: Int, _ y: Int, _ setArr: inout [Set<Int>]) -> Bool {
        guard let root = root else { return false }
        
        if level >= setArr.count {
            let set = Set([root.val])
            setArr.append(set)
        } else {
            setArr[level].insert(root.val)
        }
        
        if (root.left?.val == x && root.right?.val == y) ||
                (root.left?.val == y && root.right?.val == x) {
            return false
        } else if setArr[level].contains(x), setArr[level].contains(y) {
            print("b")
            return true
        } else {
            return findCousins(root.left, level + 1, x, y, &setArr) || findCousins(root.right, level + 1, x, y, &setArr)
        }
    }
}
