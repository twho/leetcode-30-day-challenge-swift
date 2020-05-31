//
//  TestsMayWeek3.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsMayWeek3: XCTestCase {
    let sol16 = MaySolDay16()
    let sol17 = MaySolDay17()
    let sol20 = MaySolDay20()
    let sol21 = MaySolDay21()
    
    // MARK: - Day 15: Maximum Sum Circular Subarray
    
    // MARK: - Day 16: Odd Even Linked List
    func testOddEvenLinkedList1() {
        let input = [1, 2, 3, 4, 5].convertToLinkedList()
        let expected = [1, 3, 5, 2, 4].convertToLinkedList()
        XCTAssertTrue(sol16.oddEvenList(input)!.isEqualToLinkedList(expected))
    }
    
    func testOddEvenLinkedList2() {
        let input = [2, 1, 3, 5, 6, 4, 7].convertToLinkedList()
        let expected = [2, 3, 6, 7, 1, 5, 4].convertToLinkedList()
        XCTAssertTrue(sol16.oddEvenList(input)!.isEqualToLinkedList(expected))
    }
    
    // MARK: - Day 17: Find All Anagrams in a String
    func testFindAllAnagramsInString1() {
        let input = (s: "cbaebabacd", p: "abc")
        let expected = [0, 6]
        XCTAssertEqual(expected, sol17.findAnagrams(input.s, input.p))
    }
    
    func testFindAllAnagramsInString2() {
        let input = (s: "abab", p: "ab")
        let expected = [0, 1, 2]
        XCTAssertEqual(expected, sol17.findAnagrams(input.s, input.p))
    }
    
    // MARK: - Day 18: Permutation in String
    
    // MARK: - Day 19: Online Stock Span
    func testOnlineStockSpan1() {
        let stockSpanner = MaySolDay19.StockSpanner()
        XCTAssertEqual(1, stockSpanner.next(100))
        XCTAssertEqual(1, stockSpanner.next(80))
        XCTAssertEqual(1, stockSpanner.next(60))
        XCTAssertEqual(2, stockSpanner.next(70))
        XCTAssertEqual(1, stockSpanner.next(60))
        XCTAssertEqual(4, stockSpanner.next(75))
        XCTAssertEqual(6, stockSpanner.next(85))
    }
    
    // MARK: - Day 20: Kth Smallest Element in a BST
    func testKthSmallest1() {
        let input = (
            tree: [
                3,
                1, 4,
                nil, 2, nil, nil
            ].convertToBinaryTree(),
            k: 1
        )
        let expected = 1
        XCTAssertEqual(expected, sol20.kthSmallest(input.tree, input.k))
    }
    
    func testKthSmallest2() {
        let input = (
            tree: [
                5,
                3, 6,
                2, 4, nil, nil,
                1, nil, nil, nil, nil, nil, nil, nil
            ].convertToBinaryTree(),
            k: 3
        )
        let expected = 3
        XCTAssertEqual(expected, sol20.kthSmallest(input.tree, input.k))
    }
    
    // MARK: - Day 21: Count Square Submatrices with All Ones
    func testCountSquares1() {
        let input = [
          [0, 1, 1, 1],
          [1, 1, 1, 1],
          [0, 1, 1, 1]
        ]
        let expected = 15
        XCTAssertEqual(expected, sol21.countSquares(input))
    }
    
    func testCountSquares2() {
        let input = [
          [1, 0, 1],
          [1, 1, 0],
          [1, 1, 0]
        ]
        let expected = 7
        XCTAssertEqual(expected, sol21.countSquares(input))
    }
}
