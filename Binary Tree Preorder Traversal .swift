  //
  //  Add to Array-Form of Integer.swift
  //  Leetcode
  //
  //  Created by VIJAY K 02/02/21.
  //  Copyright © 2021 Personal. All rights reserved.
  //

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var result: [Int] = []
        preorderTraversalHelper(root, &result)
        
        return result
    }
    
    private func preorderTraversalHelper(_ root: TreeNode?, _ result: inout [Int]) {
        guard let root = root else { return }
        
        result.append(root.val)
        
        preorderTraversalHelper(root.left, &result)
        
        preorderTraversalHelper(root.right, &result)
    }
}
