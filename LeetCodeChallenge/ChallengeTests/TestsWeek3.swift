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

    // TODO: Performance tests comes later
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
