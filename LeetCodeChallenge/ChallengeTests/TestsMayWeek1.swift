//
//  TestsMayWeek1.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/3/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

// May Edition
class TestsMayWeek1: XCTestCase {
    let sol1 = MaySolDay1()
    let sol2 = MaySolDay2()
    let sol3 = MaySolDay3()
    let sol4 = MaySolDay4()
    let sol5 = MaySolDay5()
    let sol6 = MaySolDay6()
    let sol7 = MaySolDay7()
    
    // MARK: - Day 1: First Bad Version
    func testFirstBadVersion1() {
        let expected = 4
        sol1.setBadVersion(expected)
        let input = 5
        XCTAssertEqual(expected, sol1.firstBadVersion(input))
    }
    
    func testFirstBadVersion2() {
        let expected = 37
        sol1.setBadVersion(expected)
        let input = 50
        XCTAssertEqual(expected, sol1.firstBadVersion(input))
    }
    
    // MARK: - Day 2: Jewels and Stones
    func testJewelsAndStones1() {
        let input = (J: "aA", S: "aAAbbbb")
        let expected = 3
        XCTAssertEqual(expected, sol2.numJewelsInStones(input.J, input.S))
    }
    
    func testJewelsAndStones2() {
        let input = (J: "z", S: "ZZ")
        let expected = 0
        XCTAssertEqual(expected, sol2.numJewelsInStones(input.J, input.S))
    }

    // MARK: - Day 3: Ransom Note
    func testRansomNote1() {
        let input = (ransomNote: "a", magazine: "b")
        XCTAssertFalse(sol3.canConstruct(input.ransomNote, input.magazine))
    }
    
    func testRansomNote2() {
        let input = (ransomNote: "aa", magazine: "ab")
        XCTAssertFalse(sol3.canConstruct(input.ransomNote, input.magazine))
    }
    
    func testRansomNote3() {
        let input = (ransomNote: "aa", magazine: "aab")
        XCTAssertTrue(sol3.canConstruct(input.ransomNote, input.magazine))
    }
    
    // MARK: - Day 4: Number Complement
    func testNumberComplement1() {
        let input = 5
        let expected = 2
        XCTAssertEqual(expected, sol4.findComplement(input))
    }
    
    func testNumberComplement2() {
        let input = 1
        let expected = 0
        XCTAssertEqual(expected, sol4.findComplement(input))
    }
    
    // MARK: - Day 5: First Unique Character in a String
    func testFirstUniqueCharacterInString1() {
        let input = "leetcode"
        let expected = 0
        XCTAssertEqual(expected, sol5.firstUniqChar(input))
    }
    
    func testFirstUniqueCharacterInString2() {
        let input = "loveleetcode"
        let expected = 2
        XCTAssertEqual(expected, sol5.firstUniqChar(input))
    }
    
    // MARK: - Day 6: Majority Element
    func testMajorityElement1() {
        let input = [3, 2, 3]
        let expected = 3
        XCTAssertEqual(expected, sol6.majorityElement(input))
    }
    
    func testMajorityElement2() {
        let input = [2, 2, 1, 1, 1, 2, 2]
        let expected = 2
        XCTAssertEqual(expected, sol6.majorityElement(input))
    }
    
    // MARK: - Day 7: Cousins in Binary Tree
    func testCousinsInBinaryTree1() {
        let tree = [
            1,
            2, 3,
            4, nil, nil, nil
        ].convertToBinaryTree()
        let input = (x: 4, y: 3)
        XCTAssertFalse(sol7.isCousins(tree, input.x, input.y))
    }
    
    func testCousinsInBinaryTree2() {
        let tree = [
            1,
            2, 3,
            nil, 4, nil, 5
        ].convertToBinaryTree()
        let input = (x: 5, y: 4)
        XCTAssertTrue(sol7.isCousins(tree, input.x, input.y))
    }
    
    func testCousinsInBinaryTree3() {
        let tree = [
            1,
            2, 3,
            nil, 4, nil, nil
        ].convertToBinaryTree()
        let input = (x: 2, y: 3)
        XCTAssertFalse(sol7.isCousins(tree, input.x, input.y))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
