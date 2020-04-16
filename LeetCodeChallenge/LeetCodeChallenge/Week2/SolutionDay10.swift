//
//  SolutionDay10.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/min-stack/
class SolutionDay10 {
    
    class MinStack {
        var arr: [Node]
        
        /** initialize your data structure here. */
        init() {
            arr = [Node]()
        }
        
        func push(_ x: Int) {
            arr.append(Node(x, min(x, getMin())))
        }
        
        func pop() {
            arr.removeLast()
        }
        
        func top() -> Int {
            guard let last = arr.last else { return -1 }
            return last.val
        }
        
        func getMin() -> Int {
            guard let last = arr.last else { return Int.max }
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
