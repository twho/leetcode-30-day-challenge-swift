//
//  SolutionDay10.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/min-stack/
class SolutionDay10 {
    
    class MinStack: MinStackProtocol {
        var stack: [Node]
        
        /** initialize your data structure here. */
        init() {
            stack = [Node]()
        }
        
        func push(_ x: Int) {
            stack.append(Node(x, min(x, getMin())))
        }
        
        func pop() {
            stack.removeLast()
        }
        
        func top() -> Int {
            guard let last = stack.last else { return -1 }
            return last.val
        }
        
        func getMin() -> Int {
            guard let last = stack.last else { return Int.max }
            return last.minVal
        }
    }

    class Node {
        var val: Int
        var minVal: Int
        
        init(_ value: Int, _ minVal: Int) {
            self.val = value
            self.minVal = minVal
        }
    }
}

protocol MinStackProtocol {
    // Push element x onto stack.
    func push(_ x: Int)
    // Removes the element on top of the stack.
    func pop()
    // Get the top element.
    func top() -> Int
    // Retrieve the minimum element in the stack.
    func getMin() -> Int
}
