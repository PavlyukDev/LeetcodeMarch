//: [Short Encoding of Words](https://leetcode.com/problems/short-encoding-of-words/)

func minimumLengthEncoding(_ words: [String]) -> Int {
    let sorted = words.sorted(by: {$0.count > $1.count})

    var results: [Character: [String]] = [:]
    for word in sorted {
        guard let key = word.last else { continue }

        if let val = results[key] {
            if !val.contains(where: { $0.hasSuffix(word) }) {
                results[key] = val + [word]
            }
        } else {
            results[key] = [word]
        }
    }

    let strRes = results.reduce("") { res, words in
        if res.isEmpty {
            return words.value.joined(separator: "#") + "#"
        } else {
            return res + words.value.joined(separator: "#") + "#"
        }
    }

    return strRes.count
}

minimumLengthEncoding(["time", "me", "bell"])   //10
minimumLengthEncoding(["feipyxx", "e"])         //10

//: [Next](@next)
