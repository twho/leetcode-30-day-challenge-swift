//
//  TestsMayWeek2.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsMayWeek2: XCTestCase {
    let sol8 = MaySolDay8()
    let sol9 = MaySolDay9()
    let sol10 = MaySolDay10()
    
    // MARK: - Day 8: Check If It Is a Straight Line
    func testCheckStraightLine1() {
        let input = [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]]
        XCTAssertTrue(sol8.checkStraightLine(input))
    }
    
    func testCheckStraightLine2() {
        let input = [[1, 1], [2, 2], [3, 4], [4, 5], [5, 6], [7, 7]]
        XCTAssertFalse(sol8.checkStraightLine(input))
    }
    
    func testCheckStraightLine3() {
        let input = [[-3, -2], [-1, -2], [2, -2], [-2, -2], [0, -2]]
        XCTAssertTrue(sol8.checkStraightLine(input))
    }
    
    // MARK: - Day 9: Valid Perfect Square
    func testIsPerfectSquare1() {
        let input = 16
        XCTAssertTrue(sol9.isPerfectSquare(input))
    }
    
    func testIsPerfectSquare2() {
        let input = 7
        XCTAssertFalse(sol9.isPerfectSquare(input))
    }
    
    func testIsPerfectSquare3() {
        let input = 100
        XCTAssertTrue(sol9.isPerfectSquare(input))
    }

    // MARK: - Day 10: Find the Town Judge
    func testFindJudge1() {
        let input = (N: 2, trust: [[1, 2]])
        XCTAssertEqual(2, sol10.findJudge(input.N, input.trust))
    }
    
    func testFindJudge2() {
        let input = (N: 3, trust: [[1, 3], [2, 3]])
        XCTAssertEqual(3, sol10.findJudge(input.N, input.trust))
    }
    
    func testFindJudge3() {
        let input = (N: 3, trust: [[1, 3], [2, 3], [3, 1]])
        XCTAssertEqual(-1, sol10.findJudge(input.N, input.trust))
    }
    
    func testFindJudge4() {
        let input = (N: 3, trust: [[1, 2], [2, 3]])
        XCTAssertEqual(-1, sol10.findJudge(input.N, input.trust))
    }
    
    func testFindJudge5() {
        let input = (N: 4, trust: [[1, 3], [1, 4], [2, 3], [2, 4], [4, 3]])
        XCTAssertEqual(3, sol10.findJudge(input.N, input.trust))
    }
    
    // MARK: - Day 14: Implement Trie (Prefix Tree)
    func testTrie1() {
        let trie = MaySolDay14.Trie()
        
        trie.insert("apple")
        
        XCTAssertTrue(trie.search("apple"))
        XCTAssertFalse(trie.search("app"))
        
        XCTAssertTrue(trie.startsWith("apple"))
        XCTAssertTrue(trie.startsWith("app"))
        XCTAssertFalse(trie.startsWith("pp"))
    }
    
    func testTrie2() {
        let trie = MaySolDay14.Trie()
        
        trie.insert("app")
        trie.insert("apple")
        trie.insert("beer")
        trie.insert("add")
        trie.insert("jam")
        trie.insert("rental")
        
        XCTAssertFalse(trie.search("apps"))
        XCTAssertTrue(trie.search("app"))
        XCTAssertFalse(trie.search("apps"))
        XCTAssertFalse(trie.search("ad"))
        XCTAssertFalse(trie.search("applepie"))
        XCTAssertFalse(trie.search("jan"))
        XCTAssertFalse(trie.search("rent"))
        XCTAssertTrue(trie.search("beer"))
        XCTAssertTrue(trie.search("jam"))

        XCTAssertFalse(trie.startsWith("apps"))
        XCTAssertTrue(trie.startsWith("app"))
        XCTAssertTrue(trie.startsWith("ad"))
        XCTAssertFalse(trie.startsWith("applepie"))
        XCTAssertFalse(trie.startsWith("rest"))
        XCTAssertFalse(trie.startsWith("jan"))
        XCTAssertTrue(trie.startsWith("rent"))
        XCTAssertTrue(trie.startsWith("beer"))
        XCTAssertTrue(trie.startsWith("jam"))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
