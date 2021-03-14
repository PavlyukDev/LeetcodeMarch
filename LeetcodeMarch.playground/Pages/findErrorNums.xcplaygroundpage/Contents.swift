//: [Set Mismatch](https://leetcode.com/problems/set-mismatch/)

import Foundation

func findErrorNums(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else {
        return []
    }
    var correctArr = Set(Array(1..<nums.count+1))
    let missed = correctArr.symmetricDifference(nums)
    guard !missed.isEmpty else { return [] }
    for item in nums {
        if correctArr.remove(item) == nil {
            return  [item, missed.first!]
        }
    }

    return []
}

findErrorNums([1,2,2,4]) // [2,3]
findErrorNums([1,1]) // [1,2]

//: [Next](@next)
