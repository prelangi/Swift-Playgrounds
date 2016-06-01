//: Playground - noun: a place where people can play
// Try out Markdown features as listed int this AppCoda tutorial : http://www.appcoda.com/swift-markdown/?utm_source=sendy&utm_medium=email&utm_campaign=wwdc-interviews-2016

import UIKit

var str = "Hello, playground"

/// This is an **awesome** documentation line for a really *useful* variable
var someVar = "This is a variable"

/** 
    It calculates and returns the outcome of the division of two parameters
 
    ## Important Notes ##
    1. Both parameters are **double** numbers. 
    2. For a proper result, the *second number should be non-zero*.
    3. If the second parameter is 0, then the function will return nil
 
 */
func performDivision(number1: Double, number2: Double) -> Double! {
    if number2 != 0 {
        return number1/number2
    }
    else {
        return nil
    }
}



/**
 It doubles the value given as a parameter
 
 ### Usage Example: ###
 ````
 let single = 5
 let double = doubleValue(single)
 print double
 ````
 
 * Use the `doubleValue(_:)` function to get the double value of any number.
 * Only ***Int*** properties are allowed.
 
 */
func doubleValue(value:Int) -> Int {
    return value*2
}