//
//  TestsWeek4.swift
//  ChallengeTests
//
//  Created by Michael Ho on 4/27/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsWeek4: XCTestCase {
    let sol22 = SolutionDay22()
    let sol23 = SolutionDay23()
    let sol25 = SolutionDay25()
    let sol26 = SolutionDay26()
    let sol27 = SolutionDay27()
    
    // MARK: - Day 22: Subarray Sum Equals K
    func testSubarraySumEqualsK1() {
        let input = (nums: [1, 1, 1, 3, 8, 9], k: 5)
        let expected = 1
        
        XCTAssertEqual(expected, sol22.subarraySum(input.nums, input.k))
    }
    
    func testSubarraySumEqualsK2() {
        let input = (nums: [1, 1, 1], k: 2)
        let expected = 2
        
        XCTAssertEqual(expected, sol22.subarraySum(input.nums, input.k))
    }
    
    // MARK: - Day 23: Bitwise AND of Numbers Range
    func testBitwiseANDOfNumbersRange1() {
        let input = (5, 7)
        let expected = 4
        XCTAssertEqual(expected, sol23.rangeBitwiseAnd(input.0, input.1))
    }
    
    func testBitwiseANDOfNumbersRange2() {
        let input = (0, 1)
        let expected = 0
        XCTAssertEqual(expected, sol23.rangeBitwiseAnd(input.0, input.1))
    }
    
    // MARK: - Day 24: LRU Cache
    func testLRUCache1() {
        let cache = SolutionDay24.LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        XCTAssertEqual(1, cache.get(1))
        
        cache.put(3, 3)
        XCTAssertEqual(-1, cache.get(2))
        
        cache.put(4, 4)
        XCTAssertEqual(-1, cache.get(1))
        XCTAssertEqual(3, cache.get(3))
        XCTAssertEqual(4, cache.get(4))
    }
    
    func testLRUCache2() {
        let cache = SolutionDay24.LRUCache(5)
        cache.put(1, 10)
        cache.put(2, 20)
        cache.put(3, 30)
        cache.put(4, 40)
        cache.put(5, 50)
        cache.put(4, 41)
        XCTAssertEqual(10, cache.get(1))
        
        cache.put(6, 60)
        XCTAssertEqual(-1, cache.get(2))
        
        cache.put(7, 70)
        XCTAssertEqual(-1, cache.get(3))
        XCTAssertEqual(41, cache.get(4))
        XCTAssertEqual(60, cache.get(6))
    }
    
    // MARK: - Day 25: Jump Game
    func testJumpGame1() {
        let input = [2, 3, 1, 1, 4]
        XCTAssertTrue(sol25.canJump(input))
    }
    
    func testJumpGame2() {
        let input = [3, 2, 1, 0, 4]
        XCTAssertFalse(sol25.canJump(input))
    }
    
    func testJumpGame3() {
        let input = [1, 2, 3]
        XCTAssertTrue(sol25.canJump(input))
    }
    
    // MARK: - Day 26: Longest Common Subsequence
    func testLongestCommonSubsequence1() {
        let input = ("abcde", "ace")
        let expected = 3
        XCTAssertEqual(expected, sol26.longestCommonSubsequence(input.0, input.1))
    }
    
    func testLongestCommonSubsequence2() {
        let input = ("abc", "def")
        let expected = 0
        XCTAssertEqual(expected, sol26.longestCommonSubsequence(input.0, input.1))
    }
    
    func testLongestCommonSubsequence3() {
        let input = ("abc", "abc")
        let expected = 3
        XCTAssertEqual(expected, sol26.longestCommonSubsequence(input.0, input.1))
    }
    
    func testLongestCommonSubsequence4() {
        let input = ("pmjghexybyrgzczy", "hafcdqbgncrcbihkd")
        let expected = 4
        XCTAssertEqual(expected, sol26.longestCommonSubsequence(input.0, input.1))
    }
    
    func testLongestCommonSubsequence5() {
        let input = ("hofubmnylkra", "pqhgxgdofcvmr")
        let expected = 5
        XCTAssertEqual(expected, sol26.longestCommonSubsequence(input.0, input.1))
    }
    
    // MARK: - Day 27: Maximal Square
    func testMaximalSquare1() {
        let input: [[Character]] = [
            ["1", "0", "1", "0", "0"],
            ["1", "0", "1", "1", "1"],
            ["1", "1", "1", "1", "1"],
            ["1", "0", "0", "1", "0"]
        ]
        let expected = 4
        XCTAssertEqual(expected, sol27.maximalSquare(input))
    }
    
    func testMaximalSquare2() {
        let input: [[Character]] = [
            ["1", "0", "0", "1", "0"],
            ["1", "1", "1", "1", "1"],
            ["1", "1", "1", "1", "1"],
            ["1", "1", "1", "1", "0"]
        ]
        let expected = 9
        XCTAssertEqual(expected, sol27.maximalSquare(input))
    }
    
    // MARK: - Day 28: First Unique Number
    func testFirstUniqueNumber1() {
        let firstUnique = SolutionDay28.FirstUnique([2, 3, 5])
        XCTAssertEqual(2, firstUnique.showFirstUnique())
        firstUnique.add(5)
        XCTAssertEqual(2, firstUnique.showFirstUnique())
        firstUnique.add(2)
        XCTAssertEqual(3, firstUnique.showFirstUnique())
        firstUnique.add(3)
        XCTAssertEqual(-1, firstUnique.showFirstUnique())
    }
    
    func testFirstUniqueNumber2() {
        let firstUnique = SolutionDay28.FirstUnique([7, 7, 7, 7, 7, 7])
        XCTAssertEqual(-1, firstUnique.showFirstUnique())
        firstUnique.add(7)
        firstUnique.add(3)
        firstUnique.add(3)
        firstUnique.add(17)
        XCTAssertEqual(17, firstUnique.showFirstUnique())
    }
    
    func testFirstUniqueNumber3() {
        let firstUnique = SolutionDay28.FirstUnique([809])
        XCTAssertEqual(809, firstUnique.showFirstUnique())
        firstUnique.add(809)
        XCTAssertEqual(-1, firstUnique.showFirstUnique())
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
