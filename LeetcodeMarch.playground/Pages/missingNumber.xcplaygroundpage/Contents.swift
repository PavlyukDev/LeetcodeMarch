//: [Missing numbers](https://leetcode.com/problems/missing-number/solution/)

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    return (nums.count * (nums.count + 1) / 2) - nums.reduce(Int(0), +)
}

missingNumber([3,0,1]) // 2
missingNumber([0,1]) // 2
missingNumber([9,6,4,2,3,5,7,0,1]) // 8
missingNumber([0]) // 1

//: [Next](@next)
