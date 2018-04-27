//: Playground - noun: a place where people can play

import UIKit

//a very basic function
func sayHello() {
    let greeting = "Hello there!"
    print(greeting)
}

//using the newly cvreated function
sayHello()

//function can be used multiple times in succession
sayHello()

//function with an argument
func sayHelloName(name: String) {
    print("Hello \(name), why do you sleep so much?")
}

//using a function with an argument
sayHelloName(name: "Kosmos")


//arguments for a function with a declared constant or variable
let dumpsterCat = "Rocky"
sayHelloName(name: dumpsterCat)

//That constant or variable must be a String, because you declared the argument to sayHello(name:) to be a String!)
//let dumpsterCat = 12345
//sayHelloName(name: dumpsterCat)


//sayHello(name:) requires an argument, but if you call on this function and don't pass an argument to sayHello(name:), it will result in an error. If a function requires an argument, you must pass one when calling the function!
//sayHelloName()


//################
// Functions that contain multiple arguments

func planetDescription(planet: String, numberOfMoons: Int) {
    print("There are \(numberOfMoons) moons orbiting \(planet)")
}

planetDescription(planet: "Jupiter", numberOfMoons: 67)
//print "There are 67 moons orbiting Jupiter"

var planet = "Mars"
var moons = 2
planetDescription(planet: planet, numberOfMoons: moons)
// prints "There are 2 moons orbiting Mars"

func theBestFunction(_ firstParameterName: String, _ secondParameterName: String, _ thirdParameterName: String, _ fourthParameterName: String) {
    
    print(firstParameterName)
    print(secondParameterName)
    print(thirdParameterName)
    print(fourthParameterName)
    
}

theBestFunction("Hello", "To", "You", "Marty")

/* Prints
 Hello
 To
 You
 Marty
 */
