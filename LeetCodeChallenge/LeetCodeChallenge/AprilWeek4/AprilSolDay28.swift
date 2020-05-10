//
//  AprilSolDay28.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/531/week-4/3313/
class AprilSolDay28 {
    
    class FirstUnique: FirstUniqueProtocol {
        var dict: [Int:DoublyListNode]
        var head: DoublyListNode
        var tail: DoublyListNode

        required init(_ nums: [Int]) {
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

protocol FirstUniqueProtocol {
    // Initializes the object with the numbers in the queue
    init(_ nums: [Int])
    // Returns the value of the first unique integer of the queue, and
    // returns -1 if there is no such integer.
    func showFirstUnique() -> Int
    // Insert the value to the queue.
    func add(_ val: Int)
}
