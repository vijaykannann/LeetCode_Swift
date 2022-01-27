//
//  Pascal's Triangle II.swift
//  ProblemSolving_LeetCode
//
//  Created by VIJAY K 02/02/21.
//  Copyright © 2021 Personal. All rights reserved.
//

import Foundation

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var prevArr: [Int] = []
        prevArr.append(contentsOf: [1])
        if rowIndex == 0 {
            return prevArr
        }
        
        for row in 1...rowIndex {
            var arr = Array<Int>(repeating: 0, count: row + 1)
            arr[0] = 1
            arr[row] = 1
            for col in 1..<row {
                arr[col] = prevArr[col - 1] + prevArr[col]
            }
            prevArr = arr
        }
        
        return prevArr
    }
}
