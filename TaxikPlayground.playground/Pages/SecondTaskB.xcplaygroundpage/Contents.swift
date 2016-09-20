//: [Previous](@previous)

import Foundation

var a = [Int]()
var b = [Int]()
var c = [Int]()
a.reserveCapacity(16)
b.reserveCapacity(6)


for i in 0..<16 {
    let temp = Int(arc4random_uniform(100)) - 50
    a.append(temp)
}

for i in 0..<5 {
    let temp = Int(arc4random_uniform(100)) - 50
    b.append(temp)
}

for i in 0..<a.count {
    if i < b.count {
        if b[i] < 0 {
            c.append(b[i])
        }
    }
    if a[i] < 0 {
        c.append(a[i])
    }
}

//: [Next](@next)
