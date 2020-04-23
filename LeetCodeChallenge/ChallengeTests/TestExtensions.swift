//
//  TestExtensions.swift
//  ChallengeTests
//
//  Created by Michael Ho on 4/14/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import Foundation

extension Array where Element: Collection, Element.Element: Comparable {
    
    func compareTo2DArrayIgnoreOrder(_ otherArray: [Element]) -> Bool {
        guard self.count == otherArray.count else { return false }
        
        let thisSorted = self.sorted(by: { $0.count > $1.count })
        let otherSorted = otherArray.sorted(by: { $0.count > $1.count })
        
        return thisSorted.elementsEqual(otherSorted) { (subArray, otherSubArray) -> Bool in
            subArray.sorted(by: >).elementsEqual(otherSubArray.sorted(by: >))
        }
    }
}

extension ListNode {
    
    func isEqualToLinkedList(_ otherHead: ListNode?) -> Bool {
        guard otherHead != nil else {
            return false
        }
        
        var otherNode = otherHead
        var node: ListNode? = self
        
        while node != nil {
            if otherNode == nil || (node?.val)! != (otherNode?.val)! {
                return false
            }
            otherNode = otherNode?.next
            node = node?.next
        }
        
        return true
    }
}

class TestBinaryMatrix: BinaryMatrix {
    private var getCallCount = 0
    
    override init(matrix: [[Int]]) {
        super.init(matrix: matrix)
        self.getCallCount = 0
    }
    
    override func get(_ x: Int, _ y: Int) -> Int {
        if getCallCount == 100 {
            assertionFailure("Error. 100 API calls limit reached.")
        }
        
        getCallCount += 1
        return super.get(x, y)
    }
}
