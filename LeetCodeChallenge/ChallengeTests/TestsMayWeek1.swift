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

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
