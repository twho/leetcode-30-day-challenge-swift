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
