//
//  MaySolDay19.swift
//  LeetCodeChallenge
//
//  Created by Michael Ho on 5/30/20.
//  Copyright © 2020 Michael Ho. All rights reserved.
//

import Foundation

class MaySolDay19 {
    
    class StockSpanner {
        var stack = [(Int, Int)]()

        init() {
            
        }
        
        func next(_ price: Int) -> Int {
            var span = 1
            while !stack.isEmpty, price >= stack.last!.0 {
                span += stack.removeLast().1
            }
            stack.append((price, span))
            return span
        }
    }
}
