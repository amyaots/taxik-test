//: [Previous](@previous)

import Foundation

var x = [Double]()
var Y = [Double]()
x.reserveCapacity(16)
Y.reserveCapacity(16)

for i in 0..<16 {
    x.append(Double(arc4random_uniform(100)))
}

func findSum() -> Double {
    var result = 0.0
    var min = 1.0
    if let xMin = x.minElement() {
        min = xMin
    }
    for i in 0..<x.count {
        let temp = pow(x[i], 3)/min
        Y.append(temp)
        if i & 0x01 > 0 {
            result += temp
        }
        
    }
    
    return result
}

let sum = findSum()

//: [Next](@next)
