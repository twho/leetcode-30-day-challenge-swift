//
//  DataModels.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// Definition for a binary tree node.
public class TreeNode: Comparable {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public static func < (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val < rhs.val
    }
    
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val
    }
    
}

public class BinarySearchTree<T: TreeNode> {
    private var root: TreeNode?
    
    // Init BinarySearchTree by its root node
    init(root: TreeNode?) {
        if !BinarySearchTree.isValidBinarySearchTree(root) {
            assertionFailure("This is not a valid binary search tree.")
        }
        self.root = root
    }
    
    public func isEqualToOtherTree(_ otherRoot: TreeNode?) -> Bool {
        return BinarySearchTree.preorderTraversal(self.root) == BinarySearchTree.preorderTraversal(otherRoot)
    }
    /**
     A binary search tree is a binary tree where for every node, any descendant of node.left
     has a value < node.val, and any descendant of node.right has a value > node.val.
     
     - Parameter root: The root of the binary search tree to be examinated.
     
     - Returns: A boolean indicates whether the binary tree is a binary search tree.
     */
    public static func isValidBinarySearchTree(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }
        
        if let left = root.left, let right = root.right {
            return left.val < root.val && isValidBinarySearchTree(left) &&
                right.val > root.val && isValidBinarySearchTree(right)
        } else if let left = root.left {
            return left.val < root.val && isValidBinarySearchTree(left)
        } else if let right = root.right {
            return right.val > root.val && isValidBinarySearchTree(right)
        }
        
        return true
    }
    
    public static func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var traversal = [Int]()
        guard let root = root else {
            return traversal
        }
        
        traversal.append(root.val)
        if let left = root.left {
            traversal.append(contentsOf: preorderTraversal(left))
        }
        
        if let right = root.right {
            traversal.append(contentsOf: preorderTraversal(right))
        }
        
        return traversal
    }
}

// This is the BinaryMatrix's API.
public class BinaryMatrix {
    var matrix = [[Int]]()
    
    init(matrix: [[Int]]) {
        guard matrix.count > 0 else {
            assertionFailure("Empty input.")
            return
        }
        
        let columnCount = matrix[0].count
        for idx in 0..<matrix.count {
            if matrix[idx].count != columnCount {
                assertionFailure("Invalid matrix.")
            }
        }
        
        self.matrix = matrix
    }
    
    public func get(_ x: Int, _ y: Int) -> Int {
        guard x < self.matrix.count || y < self.matrix[0].count else {
            assertionFailure("Index out of bound.")
            return -1
        }
        return matrix[x][y]
    }
    
    public func dimensions() -> [Int] {
        return [self.matrix.count, self.matrix[0].count]
    }
}

