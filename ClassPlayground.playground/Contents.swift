//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"


class NamedShape {
    var numberOfSides = 0
    var name: String
    
    //initialization method
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription()->String {
        return "A shape with \(numberOfSides) sides"
    }
}

let namedShaped = NamedShape(name:"Triang;e")

//Multiple inheritance ins not supported in Swift
//Use override keyword to override any of the methods in the base class
class Square:NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        //Setting the value of properties of the subclass
        self.sideLength = sideLength
        //Calling the initializer of the superclass
        super.init(name:name)
        //Changing the value of property defined in super class
        numberOfSides = 4
    }
    
    func area()->Double {
        return sideLength*sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let testSquare = Square(sideLength: 4, name: "4Square")
testSquare.area()
testSquare.simpleDescription()

//Initialization of an object can fail when values supplied as arguments are outside a certain range or when data that's expected is not provided
//Initializers that may fail to successfully initialize an object are called failable initializers
//A failable initializer can return nil after initialization
//Use init? to declare a failable initializer
class Circle:NamedShape {
    var radius: Double
    
    //Failable initializer
    init?(radius: Double, name:String) {
        self.radius = radius
        super.init(name:name)
        numberOfSides = 1
        if radius<=0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)"
    }
}

let successfulCircle = Circle(radius: 6.0, name: "C1")
let failedCircle = Circle(radius:-7, name: "failed circle")

//Use the optional type cast operator (as?) when you’re not sure if the downcast will succeed. This form of the operator will always return an optional value, and the value will be nil if the downcast was not possible. This lets you check for a successful downcast.
    
//Use the forced type cast operator (as!) only when you’re sure that the downcast will always succeed. This form of the operator will trigger a runtime error if you try to downcast to an incorrect class type.
class Triangle: NamedShape {
    init(sideLength: Double,name: String) {
        super.init(name:name)
        numberOfSides=3
    }
}

let shapesArray = [Triangle(sideLength: 1.2, name: "T1"), Square(sideLength: 3.0, name: "S1"),Triangle(sideLength: 3.1, name: "T2"),Triangle(sideLength: 2.4, name: "T3")]

var numT = 0
var numS = 0

for shape in shapesArray {
    if let triange = shape as? Triangle {
        numT++
    }
    if let square = shape as? Square {
        numS++
    }
}
print(numT)
print(numS)

