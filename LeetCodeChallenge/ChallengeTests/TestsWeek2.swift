//
//  TestsWeek2.swift
//  ChallengeTests
//
//  Created by Michael Ho on 4/15/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsWeek2: XCTestCase {
    let sol8 = SolutionDay8()
    let sol9 = SolutionDay9()
    let sol11 = SolutionDay11()
    let sol12 = SolutionDay12()
    let sol13 = SolutionDay13()
    let sol14 = SolutionDay14()
    
    // MARK: - Day 8: Middle of the Linked List
    func testMiddleNode1() {
        let input = [1, 2, 3, 4, 5].convertToLinkedList()
        let expected = [3, 4, 5].convertToLinkedList()
        let output = sol8.middleNode(input)
        
        XCTAssertNotNil(output)
        XCTAssertTrue(output!.isEqualToLinkedList(expected))
    }
    
    func testMiddleNode2() {
        let input = [2, 4, 6, 8, 10, 12].convertToLinkedList()
        let expected = [8, 10, 12].convertToLinkedList()
        let output = sol8.middleNode(input)
        
        XCTAssertNotNil(output)
        XCTAssertTrue(output!.isEqualToLinkedList(expected))
    }
    
    // MARK: - Day 9: Backspace String Compare
    func testBackspaceStringCompare1() {
        let input = (S: "ab#c", T: "ad#c")
        XCTAssertTrue(sol9.backspaceCompare(input.S, input.T))
    }
    
    func testBackspaceStringCompare2() {
        let input = (S: "a##c", T: "#a#c")
        XCTAssertTrue(sol9.backspaceCompare(input.S, input.T))
    }
    
    func testBackspaceStringCompare3() {
        let input = (S: "ab##", T: "c#d#")
        XCTAssertTrue(sol9.backspaceCompare(input.S, input.T))
    }
    
    func testBackspaceStringCompare4() {
        let input = (S: "a#c", T: "b")
        XCTAssertFalse(sol9.backspaceCompare(input.S, input.T))
    }
    
    // MARK: - Day 10: Min Stack
    func testMinStack1() {
        let minStack = SolutionDay10.MinStack()
        minStack.push(-2)
        minStack.push(0)
        minStack.push(-3)
        minStack.push(-6)
        minStack.push(3)
        minStack.push(7)
        XCTAssertEqual(-6, minStack.getMin())
        
        minStack.pop()
        XCTAssertEqual(3, minStack.top())
        
        minStack.pop()
        minStack.pop()
        XCTAssertEqual(-3, minStack.getMin())
    }
    
    func testMinStack2() {
        let minStack = SolutionDay10.MinStack()
        minStack.push(-2)
        minStack.push(-13)
        minStack.push(8)
        XCTAssertEqual(8, minStack.top())
        
        minStack.push(-20)
        XCTAssertEqual(-20, minStack.getMin())
        
        minStack.pop()
        XCTAssertEqual(-13, minStack.getMin())
        
        minStack.pop()
        minStack.pop()
        XCTAssertEqual(-2, minStack.getMin())
    }
    
    // MARK: - Day 11: Diameter of Binary Tree
    func testDiameterOfBinaryTree1() {
        /**
         Tree structure
             1
            / \
           2   3
          / \
         4   5
         */
        let tree = [
            1,
            2, 3,
            4, 5, nil, nil
        ].convertToBinaryTree()
        let expected = 3
        XCTAssertEqual(expected, sol11.diameterOfBinaryTree(tree))
    }
    
    func testDiameterOfBinaryTree2() {
        /**
         Tree structure
                     4
                   /   \
                  7     3
                       /  \
                      9    3
                     / \   /
                    9   7 4
                   /   / \
                  6   6   6
                 / \  /   /
                0   6 5   9
         */
        let tree = [
            4,
            7, 3,
            nil, nil, 9, 3,
            nil, nil, nil, nil, 9, 7, 4, nil,
            nil, nil, nil, nil, nil, nil, nil, nil, 6, nil, 6, 6, nil, nil, nil, nil,
            nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 6, nil, nil, 5, nil, 9, nil, nil, nil, nil, nil, nil, nil, nil, nil
        ].convertToBinaryTree()
        let expected = 6
        XCTAssertEqual(expected, sol11.diameterOfBinaryTree(tree))
    }
    
    // MARK: - Day 12: Last Stone Weight
    func testLastStoneWeight1() {
        let input = [2, 7, 4, 1, 8, 1]
        let expected = 1
        XCTAssertEqual(expected, sol12.lastStoneWeight(input))
    }
    
    func testLastStoneWeight2() {
        let input = [10, 5, 7, 23, 11, 12, 27, 19]
        let expected = 0
        XCTAssertEqual(expected, sol12.lastStoneWeight(input))
    }
    
    // MARK: - Day 13: Contiguous Array
    func testContiguousArray1() {
        let input = [0, 1]
        let expected = 2
        XCTAssertEqual(expected, sol13.findMaxLength(input))
    }
    
    func testContiguousArray2() {
        let input = [0, 1, 0]
        let expected = 2
        XCTAssertEqual(expected, sol13.findMaxLength(input))
    }
    
    func testContiguousArray3() {
        let input = [0, 1, 0, 0, 1, 0, 1, 1, 0, 0]
        let expected = 8
        XCTAssertEqual(expected, sol13.findMaxLength(input))
    }
    
    func testContiguousArray4() {
        let input = [0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0]
        let expected = 12
        XCTAssertEqual(expected, sol13.findMaxLength(input))
    }
    
    // MARK: - Day 14: Perform String Shifts
    func testPerformStringShifts1() {
        let input = (s: "abc", shift: [[0,1], [1,2]])
        let expected = "cab"
        XCTAssertEqual(expected, sol14.stringShift(input.s, input.shift))
    }
    
    func testPerformStringShifts2() {
        let input = (s: "abcdefg", shift: [[1, 1], [1, 1], [0, 2], [1, 3]])
        let expected = "efgabcd"
        XCTAssertEqual(expected, sol14.stringShift(input.s, input.shift))
    }
    
    func testPerformStringShifts3() {
        let input = (s: "michaelh", shift: [[1, 1], [1, 1], [1, 8], [0, 6], [1, 17]])
        let expected = "haelhmic"
        XCTAssertEqual(expected, sol14.stringShift(input.s, input.shift))
    }
    
    // TODO: Performance tests comes later
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
