//
//  BalancedBinaryTree.swift
//  iSwiftLeetCode
//
//  Created by ytlvy on 2022/1/7.
//

import Foundation

class BalancedBinaryTree {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkHeight(root) != -1
    }
    
    //返回如果是平衡二叉树, 返回平衡二叉树的高度, 如果不是平衡二叉树 返回-1
    private func checkHeight(_ root: TreeNode?) ->Int {
        //base case
        guard let root = root else {
            return 0
        }
        
        let left = checkHeight(root.left)
        let right = checkHeight(root.right)
        
        //左右子树已经不平衡了, 直接返回-1
        if(left == -1 || right == -1) {
            return -1
        }
        
        //左右子树高度差 > 1, 返回-1 不平衡
        if abs(left - right) > 1 {
            return -1
        }
        
        return max(left, right) + 1
    }
}
