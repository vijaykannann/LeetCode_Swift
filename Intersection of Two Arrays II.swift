//
//  Intersection of Two Arrays II.swift
//  RewardProblem
//
//  Created by VIJAY K 02/02/21.
//  Copyright © 2021 Personal. All rights reserved.
//

import Foundation
/*
 Given two arrays, write a function to compute their intersection.

Reference: https://leetcode.com/problems/intersection-of-two-arrays-ii/
 */

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict: [Int: Int] = [:]
    var output: [Int] = []
    for num in nums1 {
        if  let val = dict[num] {
            dict[num] = val + 1
        } else {
            dict[num] = 1
        }
    }
    
    for num in nums2 {
        if let val = dict[num], val > 0 {
            dict[num] = val - 1
            output.append(num)
        } else {
            dict[num] = nil
        }
    }
    
    return output
}
