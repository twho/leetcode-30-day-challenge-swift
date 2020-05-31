//
//  TestsMayWeek4.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/31/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsMayWeek4: XCTestCase {
    let sol22 = MaySolDay22()
    let sol23 = MaySolDay23()
    let sol24 = MaySolDay24()
    let sol25 = MaySolDay25()
    let sol26 = MaySolDay26()
    let sol27 = MaySolDay27()
    let sol28 = MaySolDay28()
    
    // MARK: - Day 22: Sort Characters By Frequency
    func testFrequencySort1() {
        let input = "tree"
        let expected1 = "eetr"
        let expected2 = "eert"
        let output = sol22.frequencySort(input)
        XCTAssertTrue(output == expected1 || output == expected2)
    }
    
    func testFrequencySort2() {
        let input = "cccaaa"
        let expected1 = "aaaccc"
        let expected2 = "cccaaa"
        let output = sol22.frequencySort(input)
        XCTAssertTrue(output == expected1 || output == expected2)
    }
    
    func testFrequencySort3() {
        let input = "Aabb"
        let expected1 = "bbAa"
        let expected2 = "bbaA"
        let output = sol22.frequencySort(input)
        XCTAssertTrue(output == expected1 || output == expected2)
    }
    
    // MARK: - Day 23: Interval List Intersections
    func testIntervalIntersection1() {
        let input = (A: [[0, 2],[5, 10], [13, 23], [24, 25]], B: [[1, 5], [8, 12], [15, 24], [25, 26]])
        let expected = [[1, 2], [5, 5], [8, 10], [15, 23], [24, 24], [25, 25]]
        XCTAssertEqual(expected, sol23.intervalIntersection(input.A, input.B))
    }
    
    func testIntervalIntersection2() {
        let input = (A: [[4, 6], [7, 8], [10, 17]], B: [[5, 10]])
        let expected = [[5, 6], [7, 8], [10, 10]]
        XCTAssertEqual(expected, sol23.intervalIntersection(input.A, input.B))
    }
    
    func testIntervalIntersection3() {
        let input = (A: [[1, 3], [5, 9]], B: [[Int]]())
        let expected = [[Int]]()
        XCTAssertEqual(expected, sol23.intervalIntersection(input.A, input.B))
    }
    
    // MARK: - Day 24: Construct Binary Search Tree from Preorder Traversal
    func testConstructBSTFromPreorderTraversal1() {
        let input = [8, 5, 1, 7, 10, 12]
        /**
        Tree structure
                    8
                  /   \
                 5     10
                / \     \
               1   7    12
        */
        let expected = [
            8,
            5, 10,
            1, 7, nil, 12
        ].convertToBinaryTree()
        
        let output = BinarySearchTree(root: sol24.bstFromPreorder(input))
        XCTAssertTrue(output.isEqualToOtherTree(expected))
    }
    
    func testConstructBSTFromPreorderTraversal2() {
        let input = [9, 5, 3, 8, 10, 15, 13, 19, 25]
        /**
        Tree structure
                    9
                  /   \
                 5     10
                / \     \
               3   8    15
                       /  \
                      13  19
                            \
                            25
        */
        let expected = [
            9,
            5, 10,
            3, 8, nil, 15,
            nil, nil, nil, nil, nil, nil, 13, 19,
            nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 25
        ].convertToBinaryTree()
        
        let output = BinarySearchTree(root: sol24.bstFromPreorder(input))
        XCTAssertTrue(output.isEqualToOtherTree(expected))
    }
    
    // MARK: - Day 25: Uncrossed Lines
    func testMaxUncrossedLines1() {
        let input = (A: [1, 4, 2], B: [1, 2, 4])
        let expected = 2
        XCTAssertEqual(expected, sol25.maxUncrossedLines(input.A, input.B))
    }
    
    func testMaxUncrossedLines2() {
        let input = (A: [2, 5, 1, 2, 5], B: [10, 5, 2, 1, 5, 2])
        let expected = 3
        XCTAssertEqual(expected, sol25.maxUncrossedLines(input.A, input.B))
    }
    
    func testMaxUncrossedLines3() {
        let input = (A: [1, 3, 7, 1, 7, 5], B: [1, 9, 2, 5, 1])
        let expected = 2
        XCTAssertEqual(expected, sol25.maxUncrossedLines(input.A, input.B))
    }
    
    // MARK: - Day 26: Contiguous Array
    func testContiguousArray1() {
        let input = [0, 1]
        let expected = 2
        XCTAssertEqual(expected, sol26.findMaxLength(input))
    }
    
    func testContiguousArray2() {
        let input = [0, 1, 0]
        let expected = 2
        XCTAssertEqual(expected, sol26.findMaxLength(input))
    }
    
    func testContiguousArray3() {
        let input = [0, 1, 0, 0, 1, 0, 1, 1, 0, 0]
        let expected = 8
        XCTAssertEqual(expected, sol26.findMaxLength(input))
    }
    
    func testContiguousArray4() {
        let input = [0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0]
        let expected = 12
        XCTAssertEqual(expected, sol26.findMaxLength(input))
    }
    
    // MARK: - Day 27: Possible Bipartition
    func testPossibleBipartition1() {
        let input = (N: 4, dislikes: [[1, 2], [1, 3], [2, 4]])
        XCTAssertTrue(sol27.possibleBipartition(input.N, input.dislikes))
    }
    
    func testPossibleBipartition2() {
        let input = (N: 3, dislikes: [[1, 2], [1, 3], [2, 3]])
        XCTAssertFalse(sol27.possibleBipartition(input.N, input.dislikes))
    }
    
    func testPossibleBipartition3() {
        let input = (N: 5, dislikes: [[1, 2], [2, 3], [3, 4], [4, 5], [1, 5]])
        XCTAssertFalse(sol27.possibleBipartition(input.N, input.dislikes))
    }
    
    // MARK: - Day 28: Counting Bits
    func testCountingBits1() {
        let input = 2
        let expected = [0, 1, 1]
        XCTAssertEqual(expected, sol28.countBits(input))
    }
    
    func testCountingBits2() {
        let input = 5
        let expected = [0, 1, 1, 2, 1, 2]
        XCTAssertEqual(expected, sol28.countBits(input))
    }
}

