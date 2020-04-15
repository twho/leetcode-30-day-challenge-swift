//
//  SolutionDay8.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/middle-of-the-linked-list/
class SolutionDay8 {
    
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        
        var slowNode: ListNode? = head
        var fastNode: ListNode? = head
        
        while fastNode?.next != nil {
            slowNode = slowNode?.next
            fastNode = fastNode?.next?.next
        }
        
        return slowNode
    }
}
