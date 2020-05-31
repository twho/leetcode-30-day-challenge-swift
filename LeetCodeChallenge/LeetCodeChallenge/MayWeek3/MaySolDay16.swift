//
//  MaySolDay16.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/odd-even-linked-list/
class MaySolDay16 {
    
    func oddEvenList(_ head: SinglyListNode?) -> SinglyListNode? {
        guard head != nil else { return nil }
        
        var odd = head
        var even = head?.next
        let evenHead = even
        
        while even != nil, even?.next != nil {
            odd?.next = even?.next
            odd = odd?.next
            
            even?.next = odd?.next
            even = even?.next
        }
        
        odd?.next = evenHead
        return head
    }
}
