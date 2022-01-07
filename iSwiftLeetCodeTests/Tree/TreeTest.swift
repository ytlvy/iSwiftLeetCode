//
//  TreeTest.swift
//  iSwiftLeetCodeTests
//
//  Created by ytlvy on 2022/1/7.
//

import Quick
import Nimble

@testable import iSwiftLeetCode

class TreeTests: QuickSpec {
    override func spec() {
        // describe用于描述类和方法
        describe("tree test", closure: {
            var btree : BalancedBinaryTree!
            
            // beforeEach/afterEach相当于setUp/tearDown,beforeSuite/afterSuite相当于全局setUp/tearDown
            beforeEach {
                btree = BalancedBinaryTree()
            }
            
             //context用于指定条件或状态
            context("test is balanced tree", closure: {
                
                // it用于描述测试的方法名
                it("est is balanced tree", closure: {
                    var tree: TreeNode
                    tree = TreeNode(1)
                    tree.left = TreeNode(2)
                    tree.right = TreeNode(3)
                    tree.left!.left = TreeNode(4)
                    tree.left!.left!.left = TreeNode(5)
                    
                    expect(btree.isBalanced()).to(equal(-1))
                })
            })
            
//            describe("test is balanced tree", closure: {
//                var click : Click!
//                beforeEach {
//                    click = dolphin.click()
//                }
//
//                // context用于指定条件或状态
//                context("when the dolphin is not near anything interesting", closure: {
//
//                    // it用于描述测试的方法名
//                    it("it only emited once", closure: {
//                        expect(click.count()).to(equal(1))
//                    })
//                })
//
//                context("when the dolphin is near something interesting", closure: {
//                    it("it emited three times", closure: {
//                        expect(click.count()).to(equal(3))
//                    })
//                })
//            })
        })

    }
}
