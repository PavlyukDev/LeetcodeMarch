import Foundation

public class ListNode: CustomStringConvertible {
    public var description: String {
        var res: String = "["
        var node: ListNode? = self
        while node != nil {
            res += "\(node?.val ?? 0)"
            if node?.next != nil {
            res += ", "
            }
            node = node?.next
        }
        res += "]"
        return res
    }

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
