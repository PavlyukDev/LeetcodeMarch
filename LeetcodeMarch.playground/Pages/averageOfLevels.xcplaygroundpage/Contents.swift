//: [Average of Levels in Binary Tree](https://leetcode.com/problems/average-of-levels-in-binary-tree/)

import Foundation

class Solution {
    var result: [[Double]] = []

    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let rootNode = root else { return [] }

        result.append([Double(rootNode.val)])

        average(node: rootNode, level: 1)

        return result.reduce([Double](), { res, val in
                                            let averrage = val.reduce(Double(0), +) / Double(val.count)
                                            return res + [averrage]
                                        })
    }

    func average(node: TreeNode?, level: Int){
        guard let next = node else { return }
        var res = [Double]()

        if let leftVal = next.left?.val {
            res.append(Double(leftVal))
        }

        if let rightVal = next.right?.val {
            res.append(Double(rightVal))
        }


        if res.isEmpty {
            return
        }

        if result.count > level {
            result[level] += res
        } else {
            result.append(res)
        }

        average(node: next.left, level: level + 1)
        average(node: next.right, level: level + 1)
    }
}
//: [Next](@next)
