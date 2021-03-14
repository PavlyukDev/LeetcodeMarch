//: [Intersection of Two Linked Lists](https://leetcode.com/problems/intersection-of-two-linked-lists/)
import Foundation

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard headA != nil && headB != nil else { return nil }
    var arrA: [ListNode] = []

    var nextA = headA

    while nextA != nil {
        arrA.append(nextA!)
        nextA = nextA?.next
    }

    var arrB: [ListNode] = []
    var nextB = headB

    while nextB != nil {
        arrB.append(nextB!)
        nextB = nextB?.next
    }

    arrB.reverse()
    arrA.reverse()
    let maxIndex = min(arrA.count, arrB.count)
    var index = 0

    while true {
        if index < maxIndex && arrA[index] === arrB[index] {
            index += 1
        } else if index > 0 {
            return arrA[index-1]
        } else {
            return nil
        }
    }
}


func testIntersection() {
    let headA = ListNode(array: [4,1])
    let headB = ListNode(array: [5,6,1])
    let intersection = ListNode(array: [8,4,5])
    headA?.next = intersection
    headB?.next = intersection
    getIntersectionNode(headA, headB) === intersection//true
}

func testNoIntersection() {
    let headA = ListNode(array: [2,6,4])
    let headB = ListNode(array: [1,4])
    getIntersectionNode(headA, headB) //nil
}

testIntersection()
testNoIntersection()

//: [Next](@next)
