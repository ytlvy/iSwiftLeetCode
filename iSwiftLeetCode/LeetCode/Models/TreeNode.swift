//
//  TreeNode.swift
//  iSwiftLeetCode
//
//  Created by ytlvy on 2022/1/7.
//

import Foundation
import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
