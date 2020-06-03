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
}
