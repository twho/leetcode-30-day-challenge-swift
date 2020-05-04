//
//  MaySolDay1.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/3/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

// LeetCode: https://leetcode.com/problems/first-bad-version/
class MaySolDay1 {
    private var badVersion = 0
    
    func firstBadVersion(_ n: Int) -> Int {
        if n == 1 {
            return isBadVersion(n) ? 1 : -1
        }
        var start = 1
        var end = n
        while start < end {
            let mid = (start + end) / 2
            if end == start + 1 {
                return isBadVersion(start) ? start : end
            }
            if isBadVersion(mid) {
                end = mid
            } else {
                start = mid
            }
        }
        return -1
    }
    
    func setBadVersion(_ version: Int) {
        self.badVersion = version
    }
    
    private func isBadVersion(_ version: Int) -> Bool {
        return version == self.badVersion
    }
}
