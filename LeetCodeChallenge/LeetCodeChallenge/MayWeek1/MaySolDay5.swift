//
//  MaySolDay5.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/7/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/first-unique-character-in-a-string/
class MaySolDay5 {
    
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character : DoublyListNode]()
        let head = DoublyListNode(-1)
        let tail = DoublyListNode(-1)
        head.next = tail
        tail.prev = head
        
        for (idx, ch) in s.enumerated() {
            if dict[ch] == nil {
                let node = DoublyListNode(idx)
                dict[ch] = node
                appendNode(tail, node)
            } else if dict[ch]!.val == -1 {
                continue
            } else {
                removeNode(dict[ch]!)
            }
        }
        
        return head.next!.val == -1 ? -1 : head.next!.val
    }
    
    private func appendNode(_ tail: DoublyListNode, _ node: DoublyListNode) {
        tail.prev?.next = node
        node.prev = tail.prev
        tail.prev = node
        node.next = tail
    }
    
    private func removeNode(_ node: DoublyListNode) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
        node.prev = nil
        node.next = nil
        node.val = -1
    }
}
