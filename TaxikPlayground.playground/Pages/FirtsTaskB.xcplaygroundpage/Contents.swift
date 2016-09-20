//: [Previous](@previous)

import Foundation

func findT(K: Double, L: Double, x: Double) -> Double {    
    return (cos(x)*cos(x)*(K*K - L*L))/(K*L*x)
}

func findQ(T: Double, K: Double, L: Double) -> Double {
    return sqrt((T*T*abs(K-L))/0.25)
}

let K = 5.0
let L = 3.0
let x = 2.0

let T = findT(K, L: L, x: x)
let Q = findQ(T, K: K, L: L)

//: [Next](@next)
