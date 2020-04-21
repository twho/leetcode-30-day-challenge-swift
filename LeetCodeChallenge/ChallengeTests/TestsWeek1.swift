//
//  TestsWeek1.swift
//  ChallengeTests
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsWeek1: XCTestCase {
    let sol1 = SolutionDay1()
    let sol2 = SolutionDay2()
    let sol3 = SolutionDay3()
    let sol4 = SolutionDay4()
    let sol5 = SolutionDay5()
    let sol6 = SolutionDay6()
    let sol7 = SolutionDay7()
    
    // MARK: - Day 1: Single Number Tests
    func testSingleNumber1() {
        let input = [2, 2, 1]
        let expected = 1
        XCTAssertEqual(sol1.singleNumber(input), expected)
    }
    
    func testSingleNumber2() {
        let input = [4, 1, 2, 1, 2]
        let expected = 4
        XCTAssertEqual(sol1.singleNumber(input), expected)
    }
    
    // MARK: - Day 2: Happy Number Tests
    func testHappyNumber1() {
        let input = 19
        /**
         1^2 + 9^2 = 82
         8^2 + 2^2 = 68
         6^2 + 8^2 = 100
         1^2 + 0^2 + 0^2 = 1
         */
        XCTAssertTrue(sol2.isHappy(input))
    }
    
    func testHappyNumber2() {
        let input = 7
        /**
         7^2 = 49
         4^2 + 9^2 = 97
         9^2 + 7^2 = 130
         1^2 + 3^2 + 0^2 = 10
         1^2 + 0^2 = 1
         */
        XCTAssertTrue(sol2.isHappy(input))
    }
    
    func testHappyNumber3() {
        let input = 9
        /**
         9^2 = 81
         8^2 + 1^2 = 65
         6^2 + 5^2 = 61
         6^2 + 1^2 = 37
         3^2 + 7^2 = 58
         5^2 + 8^2 = 89
         8*2 + 9^2 = 145
         1^2 + 4^2 + 5^2 = 42
         4^2 + 2^2 = 20
         2^2 + 0^2 = 4
         4^2 = 16 (duplicate, which has the same result as 61. Cycle detected)
         */
        XCTAssertFalse(sol2.isHappy(input))
    }
    
    // MARK: - Day 3: Maximum Subarray Tests
    func testMaxSubArray1() {
        let input = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
        // Explanation: [4,-1,2,1] has the largest sum = 6.
        let expected = 6
        XCTAssertEqual(sol3.maxSubArray(input), expected)
    }
    
    func testMaxSubArray2() {
        let input = [1, 2, 7, -8, -4, 3, 85, -32, 20]
        let expected = 88
        XCTAssertEqual(sol3.maxSubArray(input), expected)
    }
    
    // MARK: - Day 4: Maximum Subarray Tests
    func testMoveZeroes1() {
        var input = [0, 1, 0, 3, 12]
        let expected = [1, 3, 12, 0, 0]
        sol4.moveZeroes(&input)
        XCTAssertEqual(input, expected)
    }
    
    func testMoveZeroes2() {
        var input = [0, 0, 0, 0, 0, 1]
        let expected = [1, 0, 0, 0, 0, 0]
        sol4.moveZeroes(&input)
        XCTAssertEqual(input, expected)
    }
    
    // MARK: - Day 5: Best Time to Buy and Sell Stock II
    func testMakeProfit1() {
        let input = [7, 1, 5, 3, 6, 4]
        let expected = 7
        XCTAssertEqual(sol5.maxProfit(input), expected)
    }
    
    func testMakeProfit2() {
        let input = [1, 2, 3, 4, 5]
        let expected = 4
        XCTAssertEqual(sol5.maxProfit(input), expected)
    }
    
    // MARK: - Day 6: Group Anagrams
    func testGroupAnagrams1() {
        let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
        let expected = [
          ["ate","eat","tea"],
          ["nat","tan"],
          ["bat"]
        ]
        XCTAssertTrue(expected.compareTo2DArrayIgnoreOrder(sol6.groupAnagrams(input)))
    }
    
    func testGroupAnagrams2() {
        let input = ["","",""]
        let expected = [
            ["","",""]
        ]
        XCTAssertTrue(expected.compareTo2DArrayIgnoreOrder(sol6.groupAnagrams(input)))
    }
    
    // MARK: - Day 7: Counting Elements
    func testCountingElements1() {
        let input = [1, 2, 3]
        let expected = 2
        XCTAssertEqual(expected, sol7.countElements(input))
    }
    
    func testCountingElements2() {
        let input = [1, 1, 3, 3, 5, 5, 7, 7]
        let expected = 0
        XCTAssertEqual(expected, sol7.countElements(input))
    }
    
    func testCountingElements3() {
        let input = [1, 3, 2, 3, 5, 0]
        let expected = 3
        XCTAssertEqual(expected, sol7.countElements(input))
    }
    
    func testCountingElements4() {
        let input = [1, 1, 2, 2]
        let expected = 2
        XCTAssertEqual(expected, sol7.countElements(input))
    }
    
    // Performance tests comes later
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
