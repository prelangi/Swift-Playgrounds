//: Playground - noun: a place where people can play
//For the Medium artilce about Swift Collections

import UIKit

var str = "Hello, playground"

///////////// ARRAY ///////////////////////
var perfectNumbers = [Int]() //https://en.wikipedia.org/wiki/Perfect_number
var names = [String]()

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = [Double](count:3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
var animals = ["Cat","Dog"]
var primeNumbers = [1,2,3,5,7]
//animals array = [“Cat”, “Dog”]
if animals.isEmpty {
    print("Animals array is empty")
}
else {
    print("Animals array contains \(animals.count) animals")
}

animals.append("Lion")
animals += ["Cheetah"]
animals.insert("Tiger",atIndex: 0)


//animals array = ["Tiger",“Cat”, “Dog”,"Lion","Cheetah"]
animals[1] = "Kangaroo"
var firstItem = animals[0] //firstItem = "Tiger"

animals[2...4] = ["Zebra","Elephant"]
animals
//animals array = ["Tiger",“Kangaroo”, "Zebra","Elephant"]

for animal in animals {
    print(animal)
}

for (index,value) in animals.enumerate() {
    print("Animal at index \(index): \(value)")
}


///////////// SET ////////////////////////
var letters = Set<Character>()

//If context is present, you can use [] to create a empty set
letters.insert("c")
letters = [] //letters is empty now

var favoritePlaces:Set<String> = ["Vizag","Gangtok","Seward","Seychelles"] //Note that we make the type explicit here!
var favoritePlaces_2:Set = ["Vizag","Gangtok","Seward","Seychelles"] //Note that we make the type explicit here!

if favoritePlaces.isEmpty {
    print("You have no favorite places. Time to travel 😉")
}
else {
    print("You have \(favoritePlaces.count) favorite places.Wow! That's a quite a list.")
    
}

favoritePlaces.insert("Croatia")

favoritePlaces.remove("Gangtok")
if favoritePlaces.contains("Vizag") {
    print("Looks like you have been to the City of Destiny!")
}
else {
    print("Make time to visit Vizag! It's scenic and beautiful")
}

for place in favoritePlaces {
    print("\(place)")
}
favoritePlaces //”Seward”,”Seychelles”,“Vizag”,”Croatia”

for place in favoritePlaces.sort() {
    print("\(place)")
}
favoritePlaces.sort()
//"Croatia","Seward","Seychelles","Vizag"


/////////////  DICTIONARY ////////////////
var namesOfIntegers = [Int: String]()
var stateCapitals = [String:String]()

//If context is known, you can use [:] to make a dictionary empty
stateCapitals["CA"] = "Benecia" //Will explain about this later ;)
stateCapitals = [:]


var stateCapitals_2:[String:String] = ["CA":"Sacramento","OR":"Salem"]
//Here are the key and value are both of the type String

var stateCapitals_3 = ["CA":"Sacramento","OR":"Salem"]
//Swift infers the type since the dictionary literal values are consistent.

if stateCapitals.isEmpty {
    stateCapitals["MT"] = "Helena" //adds a new key-value pair to the dictionary
}
else {
    print("Our stateCapitals dictionary has \(stateCapitals.count) entries")
}
stateCapitals = ["CA":"Sacramento","OR":"Salem"]


if let oldCapital = stateCapitals.updateValue("Sacramento",forKey: "CA") {
    print("The old capital of CA was\(oldCapital)")
}
else {
    print("There is no old capital for CA!")
}
//prints "The old capital of CA was Benecia" (https://en.wikipedia.org/wiki/Benicia,_California)

stateCapitals["GA"] = "Atlanta"
//stateCapitals = [“CA”: “Sacramento”, “OR”:”Salem", "MT":"Helena","GA":"Atlanta"]

if let removedCapital = stateCapitals.removeValueForKey("OR") {
    print("The removed capital is \(removedCapital)")
}
else {
    print("The dictionary does not contain the capital for OR")
}

stateCapitals["MT"] = nil //This will also remove the MT:Helena entry from the dictionary

for (state,capital) in stateCapitals {
    print("Capital for \(state) state is \(capital)")
}

//Iterating through keys
for state in stateCapitals.keys {
    print("State: \(state)")
}

//Iterating through capitals
for capital in stateCapitals.values {
    print("Capital: \(capital)")
}

