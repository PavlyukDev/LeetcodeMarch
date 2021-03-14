import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init?(array: [Int]) {
        guard !array.isEmpty else { return nil }
        val = array[0]
        var current = self
        for i in 1..<array.count {
            let next = ListNode(array[i])
            current.next = next
            current = next
        }
    }
}
