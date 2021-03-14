/*:
 [Distribute Candies](https://leetcode.com/problems/distribute-candies/)
 */

func distributeCandies(_ candyType: [Int]) -> Int {
    let uniqueCount = Set<Int>(candyType).count
    return min(uniqueCount, candyType.count/2)
}

distributeCandies([1,1,2,2,3,3]) // 3
distributeCandies([1,1,2,3]) // 2
distributeCandies([6,6,6,6]) // 1

//: [Next](@next)
