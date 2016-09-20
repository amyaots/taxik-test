//: Playground - noun: a place where people can play

import Foundation

func task(x: Double, eps: Double) -> Double {
    var result = 1.0
    var flag = true
    var n = 2.0
    while n < Double.infinity {
        
        let temp = pow(x, n) / fact(n)
        if temp < eps {
            break
        } else {
            result += flag ? temp : -temp
            flag = !flag
        }
        n = n + 2.0
        
    }
    return result
}

func fact(i: Double) -> Double {
    var fact = 1.0
    var j = 2.0
    while j <= i {
        fact = fact * j
        j = j + 1.0
    }
    return fact
}



let z = task(0.9, eps: 0.000000000000000000000000002)
