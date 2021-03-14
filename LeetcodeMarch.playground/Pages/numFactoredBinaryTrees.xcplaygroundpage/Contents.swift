//: [Previous](@previous)

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
solution.numFactoredBinaryTrees([2,4])
solution.numFactoredBinaryTrees([2,4,5,10])
solution.numFactoredBinaryTrees([18,3,6,2])
solution.numFactoredBinaryTrees([18,31,2,4,14,7,9,63,10,84])

// [18] [3] [6] [2] [18, 3, 6] [18, 6, 3] [6, 2, 3] [6, 3, 2]
// [18, 3, 6, null, 2, 3] [18, 3, 6, null, 3, 2] [18, 6, 3, 2, 3] [18, 6, 3, 3, 2]

//: [Next](@next)
