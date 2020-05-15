//
//  TestsMayWeek2.swift
//  ChallengeTests
//
//  Created by Michael Ho on 5/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsMayWeek2: XCTestCase {

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
