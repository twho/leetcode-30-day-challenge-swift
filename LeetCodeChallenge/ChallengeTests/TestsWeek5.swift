//
//  TestsWeek5.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/1/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsWeek5: XCTestCase {
    let sol29 = SolutionDay29()
    let sol30 = SolutionDay30()
    
    // MARK: - Day 29: Binary Tree Maximum Path Sum
    func testBinaryTreeMaximumPathSum1() {
        /**
         Tree structure
             1
            / \
           2   3
         */
        let tree = [
            1,
            2, 3
        ].convertToBinaryTree()
        let expected = 6
        XCTAssertEqual(expected, sol29.maxPathSum(tree))
    }
    
    func testBinaryTreeMaximumPathSum2() {
        /**
         Tree structure
            -10
            / \
           9  20
              / \
             15  7
         */
        let tree = [
            -10,
            9, 20,
            nil, nil, 15, 7
        ].convertToBinaryTree()
        let expected = 42
        XCTAssertEqual(expected, sol29.maxPathSum(tree))
    }
    
    func testBinaryTreeMaximumPathSum3() {
        /**
         Tree structure
             5
            / \
           4   8
          /   / \
         11  13  4
        /  \      \
       7    2      1
         */
        let tree = [
            5,
            4, 8,
            11, nil, 13, 4,
            7, 2, nil, nil, nil, nil, nil, 1
        ].convertToBinaryTree()
        let expected = 48
        XCTAssertEqual(expected, sol29.maxPathSum(tree))
    }
    
    // MARK: - Day 30: Check If a String Is a Valid Sequence from Root to Leaves Path in a Binary Tree
    func testIsValidSequenceInTree1() {
        /**
         Tree structure
              0
            /   \
           1     0
         /  \    /
        0    1  0
         \  / \
         1 0   0
         */
        let tree = [
            0,
            1, 0,
            0, 1, 0, nil,
            nil, 1, 0, 0, nil, nil, nil, nil
        ].convertToBinaryTree()
        let arr = [0, 1, 0, 1]
        XCTAssertTrue(sol30.isValidSequence(tree, arr))
    }
    
    func testIsValidSequenceInTree2() {
        /**
         Tree structure
              0
            /   \
           1     0
         /  \    /
        0    1  0
         \  / \
         1 0   0
         */
        let tree = [
            0,
            1, 0,
            0, 1, 0, nil,
            nil, 1, 0, 0, nil, nil, nil, nil
        ].convertToBinaryTree()
        let arr = [0, 0, 1]
        XCTAssertFalse(sol30.isValidSequence(tree, arr))
    }

    func testIsValidSequenceInTree3() {
        /**
         Tree structure
              0
            /   \
           1     0
         /  \    /
        0    1  0
         \  / \
         1 0   0
         */
        let tree = [
            0,
            1, 0,
            0, 1, 0, nil,
            nil, 1, 0, 0, nil, nil, nil, nil
        ].convertToBinaryTree()
        let arr = [0, 1, 1]
        XCTAssertFalse(sol30.isValidSequence(tree, arr))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
