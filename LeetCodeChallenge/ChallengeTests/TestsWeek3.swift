//
//  TestsWeek3.swift
//  ChallengeTests
//
//  Created by Michael Ho on 4/20/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsWeek3: XCTestCase {
    let sol15 = SolutionDay15()
    let sol16 = SolutionDay16()
    let sol17 = SolutionDay17()
    let sol18 = SolutionDay18()
    let sol19 = SolutionDay19()
    
    // MARK: - Day 15: Product of Array Except Self
    func testProductExceptSelf1() {
        let input = [1, 2, 3, 4]
        let expected = [24,12,8,6]
        
        XCTAssertEqual(expected, sol15.productExceptSelf(input))
    }
    
    func testMiddleNode2() {
        let input = [0, 0]
        let expected = [0, 0]
        
        XCTAssertEqual(expected, sol15.productExceptSelf(input))
    }
    
    // MARK: - Day 16: Valid Parenthesis String
    func testValidParenthesisString1() {
        let input = "()"
        XCTAssertTrue(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString2() {
        let input = "(*))"
        XCTAssertTrue(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString3() {
        let input = "(*()"
        XCTAssertTrue(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString4() {
        let input = "("
        XCTAssertFalse(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString5() {
        let input = "(*)"
        XCTAssertTrue(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString6() {
        let input = "(())((())()()(*)(*()(())())())()()((()())((()))(*"
        XCTAssertFalse(sol16.checkValidString(input))
    }
    
    func testValidParenthesisString7() {
        let input = "(()(())()())*((()(())))*()(*)()()(*((()((*(*))))()*()(()((()(*((()))*(((())(())))*))(()*))(()*)"
        XCTAssertTrue(sol16.checkValidString(input))
    }
    
    // MARK: - Day 17: Number of Islands
    func testNumberOfIslands1() {
        let input: [[Character]] = [
            ["1", "1", "0", "0", "0"],
            ["1", "1", "0", "0", "0"],
            ["0", "0", "1", "0", "0"],
            ["0", "0", "0", "1", "1"]
        ]
        let expected = 3
        XCTAssertEqual(expected, sol17.numIslands(input))
    }
    
    func testNumberOfIslands2() {
        let input: [[Character]] =  [
            ["1", "1", "1", "1", "0"],
            ["1", "1", "0", "1", "0"],
            ["1", "1", "0", "0", "0"],
            ["0", "0", "0", "0", "0"]
        ]
        let expected = 1
        XCTAssertEqual(expected, sol17.numIslands(input))
    }
    
    func testNumberOfIslands3() {
        let input: [[Character]] = [
            ["0", "0", "0", "0", "0"],
            ["0", "1", "1", "1", "0"],
            ["0", "0", "0", "0", "0"],
            ["0", "0", "0", "0", "0"]
        ]
        let expected = 1
        XCTAssertEqual(expected, sol17.numIslands(input))
    }
    
    // MARK: - Day 18: Minimum Path Sum
    func testMinimumPathSum1() {
        let input = [
          [1, 3, 1],
          [1, 5, 1],
          [4, 2, 1]
        ]
        let expected = 7
        XCTAssertEqual(expected, sol18.minPathSum(input))
    }
    
    func testMinimumPathSum2() {
        let input = [
            [1, 2, 5],
            [3, 2, 1]
        ]
        let expected = 6
        XCTAssertEqual(expected, sol18.minPathSum(input))
    }
    
    // MARK: - Day 19: Search in Rotated Sorted Array
    func testSearchRotatedSortedArray1() {
        let input = (nums: [4, 5, 6, 7, 0, 1, 2], target: 0)
        let expected = 4
        XCTAssertEqual(expected, sol19.search(input.nums, input.target))
    }
    
    func testSearchRotatedSortedArray2() {
        let input = (nums: [4, 5, 6, 7, 0, 1, 2], target: 3)
        let expected = -1
        XCTAssertEqual(expected, sol19.search(input.nums, input.target))
    }
    
    func testSearchRotatedSortedArray3() {
        let input = (nums: [Int](), target: 5)
        let expected = -1
        XCTAssertEqual(expected, sol19.search(input.nums, input.target))
    }
    
    func testSearchRotatedSortedArray4() {
        let input = (nums: [3, 1], target: 1)
        let expected = 1
        XCTAssertEqual(expected, sol19.search(input.nums, input.target))
    }

    // TODO: Performance tests comes later
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
