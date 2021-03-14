import UIKit


func reverse(_ x: Int) -> Int {
    if x == 0 { return 0 }
    let lenght = Int(log10(Double(abs(x))))
    var total = Int(pow(Double(10), Double(lenght)))
    var temp: Int = abs(x)
    var result: Int = 0
    for _ in 1...lenght+1 {
        let item = temp%10
        result += (item * total)
        total /= 10
        temp /= 10
    }
    if result > Int32.max || result < Int32.min { return 0 }
    return result * (x/abs(x))
}

func reversePlus(_ x: Int) -> Int {
    var mutable = x
    var res: Int = 0
    while mutable != 0 {
        res = res * 10 + mutable % 10
        mutable /= 10
        if res > Int32.max || res < Int32.min { return 0 }
    }
    return res
}

var a: [Int] = [12,3,4]
a.sort(by: <)
a
//repeat {
//    let item = temp%10
//    result += (item * total)
//    total /= 10
//    temp /= 10
//    num += 1
//} while temp > 0

reverse(0)
reverse(123)
reverse(-123)
reversePlus(123)


