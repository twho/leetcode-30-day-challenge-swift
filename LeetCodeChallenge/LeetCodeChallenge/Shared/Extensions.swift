//
//  Extensions.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

extension Array where Element == Int {
    
    public func convertToLinkedList() -> SinglyListNode? {
        guard self.count > 0 else {
            return nil
        }
        
        let head = SinglyListNode(self[0])
        var idx = 1
        var node: SinglyListNode? = head
        
        while idx < self.count {
            node?.next = SinglyListNode(self[idx])
            node = node?.next
            idx += 1
        }
        return head
    }
}

extension Array where Element == Int? {
    
    public func convertToBinaryTree() -> TreeNode? {
        guard self.count > 0 else {
            return nil
        }
        
        let root = TreeNode(self[0]!)
        constructTreeLevelOrder(0, root, self)
        return root
    }
    
    private func constructTreeLevelOrder(_ index: Int, _ root: TreeNode?, _ arr: [Int?]) {
        guard let root = root else { return }
        
        if index < arr.count {
            if 2*index+1 < arr.count, let val = arr[2*index+1] {
                root.left = TreeNode(val)
                constructTreeLevelOrder(2*index+1, root.left, arr)
            }
            if 2*index+2 < arr.count, let val = arr[2*index+2] {
                root.right = TreeNode(val)
                constructTreeLevelOrder(2*index+2, root.right, arr)
            }
        }
    }
}
