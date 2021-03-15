//: [Binary Trees With Factors](https://leetcode.com/problems/binary-trees-with-factors/)

import Foundation

class Solution {
    func numFactoredBinaryTrees(_ arr: [Int]) -> Int {
        let mod = 1_000_000_007
        let sorted: [Int] = arr.sorted()

        var unique: [Int: Int] = [:]
        for i in 0..<sorted.count {
            unique[sorted[i]] =  i
        }

        var dp: [Int] = Array(repeating: 1, count: sorted.count)

        for i in 0..<sorted.count {
            for j in 0..<i where sorted[i] % sorted[j] == 0 {
                let temp = sorted[i] / sorted[j]
                if let val = unique[temp] {
                    dp[i] = (dp[i] + dp[j] * dp[val]) % mod
                }
            }
        }

        return dp.reduce(0, +) % mod
    }
}

let solution = Solution()
solution.numFactoredBinaryTrees([2,4])                          //3
solution.numFactoredBinaryTrees([2,4,5,10])                     //7
solution.numFactoredBinaryTrees([18,3,6,2])                     //12
solution.numFactoredBinaryTrees([18,31,2,4,14,7,9,63,10,84])    //17

//: [Next](@next)
