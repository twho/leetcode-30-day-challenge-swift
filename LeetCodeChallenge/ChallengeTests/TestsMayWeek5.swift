//
//  TestsMayWeek5.swift
//  ChallengeTests
//
//  Created by Michael Ho on 6/3/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import XCTest

class TestsMayWeek5: XCTestCase {
    let sol29 = MaySolDay29()
    let sol30 = MaySolDay30()
    let sol31 = MaySolDay31()
    
    // MARK: - Day 29: Course Schedule
    func testCourseSchedule1() {
        let input = (numCourses: 2, prerequisites: [[1, 0]])
        XCTAssertTrue(sol29.canFinish(input.numCourses, input.prerequisites))
    }
    
    func testCourseSchedule2() {
        let input = (numCourses: 2, prerequisites: [[1, 0], [0, 1]])
        XCTAssertFalse(sol29.canFinish(input.numCourses, input.prerequisites))
    }
    
    func testCourseSchedule3() {
        let input = (numCourses: 8, prerequisites: [[1, 0], [2, 6], [1, 7], [6, 4], [7, 0], [0, 5], [7, 6]])
        XCTAssertTrue(sol29.canFinish(input.numCourses, input.prerequisites))
    }
    
    func testCourseSchedule4() {
        let input = (numCourses: 4, prerequisites: [[1, 0], [2, 0], [3, 1], [3, 2], [1, 3]])
        XCTAssertFalse(sol29.canFinish(input.numCourses, input.prerequisites))
    }
    
    // MARK: - Day 30: K Closest Points to Origin
    func testKClosest1() {
        let input = (points: [[1, 3], [-2, 2]], K: 1)
        let expected = [[-2, 2]]
        XCTAssertEqual(expected, sol30.kClosest(input.points, input.K))
    }
    
    func testKClosest2() {
        let input = (points: [[3, 3], [5, -1], [-2, 4]], K: 2)
        let expected = [[3, 3], [-2, 4]]
        XCTAssertEqual(expected, sol30.kClosest(input.points, input.K))
    }
    
    // MARK: - Day 31: Edit Distance
    func testEditDistance1() {
        let input = (word1: "horse", word2: "ros")
        let expected = 3
        XCTAssertEqual(expected, sol31.minDistance(input.word1, input.word2))
    }
    
    func testEditDistance2() {
        let input = (word1: "intention", word2: "execution")
        let expected = 5
        XCTAssertEqual(expected, sol31.minDistance(input.word1, input.word2))
    }
}
