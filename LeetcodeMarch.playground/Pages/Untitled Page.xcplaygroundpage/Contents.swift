//: [Design HashMap](https://leetcode.com/problems/design-hashmap/)

class MyHashMap {
    private var arr: [Int] = []
    /** Initialize your data structure here. */
    init() {

    }

    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        if key < arr.count {
            arr[key] = value
        } else {
            let goalCount = key - arr.count
            arr += Array<Int>(repeating: -1, count: goalCount+1)
            arr[key] = value
        }
    }

    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        if key < arr.count {
            return arr[key]
        }
        return -1
    }

    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        if key < arr.count {
            arr[key] = -1
        }
    }
}

let myHashMap = MyHashMap()
myHashMap.put(1, 1) // The map is now [[1,1]]
myHashMap.put(2, 2) // The map is now [[1,1], [2,2]]
myHashMap.get(1)    // return 1, The map is now [[1,1], [2,2]]
myHashMap.get(3)    // return -1 (i.e., not found), The map is now [[1,1], [2,2]]
myHashMap.put(2, 1) // The map is now [[1,1], [2,1]] (i.e., update the existing value)
myHashMap.get(2)    // return 1, The map is now [[1,1], [2,1]]
myHashMap.remove(2) // remove the mapping for 2, The map is now [[1,1]]
myHashMap.get(2)    // return -1 (i.e., not found), The map is now [[1,1]]

//: [Next](@next)
