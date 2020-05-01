//
//  SolutionDay8.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/middle-of-the-linked-list/
class SolutionDay8 {
    
    func middleNode(_ head: SinglyListNode?) -> SinglyListNode? {
        guard head != nil else { return nil }
        
        var slowNode: SinglyListNode? = head
        var fastNode: SinglyListNode? = head
        
        while fastNode?.next != nil {
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
        }
        
        return slowNode
    }
}
