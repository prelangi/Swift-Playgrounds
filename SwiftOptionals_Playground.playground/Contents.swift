//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Creating an optional String
var authorName: String? = "Matt Galloway"

//Forced unwrapping of the string
var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")

//However forced unwrapping can cause issues if the object is nil
//authorName = nil
//var unwrappedAuthorName = authorName!
//print("Author is \(unwrappedAuthorName)")

//One way to avoid errors when the object is nil
if authorName != nil {
    var unwrappedAuthorName = authorName!
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No author.")
}
let authorAge: Int? = 30

//Optional Binding
if let unwrappedAuthorName: String = authorName {
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No author.")
}

if let name:String = authorName,
    age:Int = authorAge {
        print("The author is \(name) who is \(age) years old.")
} else {
    print("No author or no age")
}

var firstNumber:Int? = 30
var secondNumber: Int? = 20
if let first:Int = firstNumber,
    second: Int = secondNumber where firstNumber>secondNumber {
        print("First number \(first) is greater than second number \(second)")
}
else {
    print("First number is not less than second number")
}

//Nil coalescing
//assign a default value is the unwrapped variable does not have a actual value
let optionalInt: Int? = 30
let result: Int = optionalInt ?? 0

let optionalInt2: Int? = nil
let result2:Int = optionalInt2 ?? 0

//Implicitly unwrapped optionals
//Excerpt From: Apple Inc. “The Swift Programming Language (Swift 2 Prerelease).” iBooks.
//“Implicitly unwrapped optionals are useful when an optional’s value is confirmed to exist immediately after the optional is first defined and can definitely be assumed to exist at every point thereafter. The primary use of implicitly unwrapped optionals in Swift is during class initialization”
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

//Checking for nil for an implicitly unwrapped Optional
if assumedString != nil {
    print("\(assumedString)")
}

//Challenges
var name: String? = "Ray"
var age: Int? = nil //cannot do var age:Int = nil
let distance: Float = 26.7
var middleName: String? = nil

//“nil cannot be used with nonoptional constants and variables. If a constant or variable in your code needs to work with the absence of a value under certain conditions, always declare it as an optional value of the appropriate type.”

//Excerpt From: Apple Inc. “The Swift Programming Language (Swift 2 Prerelease).” iBooks.

var surveyName: String?
//surveyName is set to nil by default





