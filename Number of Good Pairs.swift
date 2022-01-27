//
//  Number of Good Pairs.swift
//  ProblemSolving_LeetCode
//
//  Created by VIJAY K 02/02/21.
//  Copyright © 2021 Personal. All rights reserved.
//

import Foundation

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var map: [Int: Int] = [:]
        nums.forEach { (num) in
            if let number = map[num] {
                map[num] = number + 1
            } else {
                map[num] = 1
            }
        }
        
        var sum = 0
        
        for value in map.values {
            sum += value * (value - 1) / 2
        }
        
        return sum
    }
}
