//
//  MaySolDay29.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 6/3/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/course-schedule/
class MaySolDay29 {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var preDict = [Int:[Int]]()
        for pre in prerequisites {
            if preDict[pre[0]] == nil {
                preDict[pre[0]] = [pre[1]]
            } else {
                preDict[pre[0]]!.append(pre[1])
            }
        }
        
        var okCourse = Set<Int>()
        for course in 1...numCourses {
            var taken = Set<Int>()
            if helper(course, preDict, &okCourse, &taken) {
                okCourse.insert(course)
            } else {
                return false
            }
        }
        
        return true
    }
    
    private func helper(_ current: Int, _ preDict: [Int:[Int]], _ okCourse: inout Set<Int>, _ taken: inout Set<Int>) -> Bool {
        if okCourse.contains(current) {
            return true
        }
        if taken.contains(current) {
            return false
        }
        
        taken.insert(current)
        if preDict[current] != nil {
            for pre in preDict[current]! {
                if helper(pre, preDict, &okCourse, &taken) {
                    okCourse.insert(pre)
                } else {
                    return false
                }
            }
        } else {
            return true
        }
        return true
    }
}
