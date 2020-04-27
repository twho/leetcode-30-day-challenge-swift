//
//  SolutionDay24.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/27/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/lru-cache/

class SolutionDay24 {
    
    class LRUCache {
        
        var capacity: Int
        var head: ListNode
        var tail: ListNode
        var dict: [Int:ListNode]

        init(_ capacity: Int) {
            self.capacity = capacity
            dict = [Int:ListNode]()
            
            head = ListNode(-1, -1)
            tail = ListNode(-1, -1)
            head.next = tail
            tail.prev = head
        }
        
        func get(_ key: Int) -> Int {
            if let node = dict[key] {
                remove(node)
                insertToHead(node)
                return node.val
            }
            return -1
        }
        
        func insertToHead(_ node: ListNode) {
            node.next = head.next
            head.next?.prev = node
            head.next = node
            node.prev = head
        }
        
        func remove(_ node: ListNode) {
            node.next?.prev = node.prev
            node.prev?.next = node.next
        }
        
        func put(_ key: Int, _ value: Int) {
            let node = ListNode(value, key)
            
            if dict[key] != nil {
                remove(dict[key]!)
            } else if dict.keys.count == capacity {
                if let lastNode = tail.prev {
                    remove(lastNode)
                    dict[lastNode.key] = nil
                }
            }
            
            dict[key] = node
            insertToHead(node)
        }
    }

    class ListNode {
        var val: Int
        var key: Int
        var next: ListNode?
        var prev: ListNode?
        
        init(_ val: Int, _ key: Int) {
            self.val = val
            self.key = key
        }
    }
}
