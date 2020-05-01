//
//  SolutionDay28.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3313/
class SolutionDay28 {
    
    class FirstUnique {
        var dict: [Int:DoublyListNode]
        var head: DoublyListNode
        var tail: DoublyListNode

        init(_ nums: [Int]) {
            dict = [Int:DoublyListNode]()
            
            head = DoublyListNode(-1)
            tail = DoublyListNode(-1)
            head.next = tail
            tail.prev = head
            
            for num in nums {
                add(num)
            }
        }
        
        func appendNode(_ node: DoublyListNode) {
            tail.prev?.next = node
            node.next = tail
            node.prev = tail.prev
            tail.prev = node
        }
        
        func removeNode(_ node: DoublyListNode) {
            node.next?.prev = node.prev
            node.prev?.next = node.next
        }
        
        func showFirstUnique() -> Int {
            if let node = head.next {
                return node.val
            }
            return -1
        }
        
        func add(_ value: Int) {
            if dict[value] != nil {
                removeNode(dict[value]!)
                dict[value] = DoublyListNode(-1)
            } else {
                let newNode = DoublyListNode(value)
                appendNode(newNode)
                dict[value] = newNode
            }
        }
    }
}
