//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//  TODO: Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

print("Hello world!")

func sum(int1: Int, _ int2:Int) -> Int {
    return int1+int2
}

func sum(int1: Double, _ int2: Double) -> Double {
    return int1+int2
}

let i1 = 1
let i2 = 4
var i3 = sum(i1,i2)

print("Sum is \(i3)")

let f1 = 2.2
let f2 = 2.4
let f3 = sum(f1,f2)
print(f3)

//Use protocol to
protocol Summable {
    func +(lhs: Self, rhs: Self) -> Self
    
}
extension Int: Summable {}
extension Double: Summable {}
extension String: Summable {}
extension Array: Summable {}

//Use generics to write a function that can handle all data types
func gsum<T:Summable>(l:T, _ r:T)-> T{
    return  l+r
}

let s1 = "Prasanthi"
let s2 = "Aswani"
let s3 = gsum(s1,s2)
print(s3)

let a1: [String] = ["fo","go"];
let a2: [String] = ["ur","green"];
let a3 = gsum(a1,a2)
print(a3)
