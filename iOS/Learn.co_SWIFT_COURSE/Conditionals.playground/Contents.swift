//: Playground - noun: a place where people can play

import UIKit

//basic conditional example:
func studyMore() {
    print("Study 📖")
}

var classIsHard = false
//classIsHard <- true
//!classIsHard <- false
if !classIsHard {
    studyMore()
}
// prints "Study 📖"


//else clause for a conditional
func studyMore2() {
    print("Study 📖")
}

func catchUpOnSleep() {
    print("Zzzz 💤 😴")
}

var classIsHard2 = false

if classIsHard2 {
    studyMore2()
} else {
    catchUpOnSleep()
}

// prints "Zzzz 💤 😴"

//"if the file exists then open it, otherwise tell the user it can't be found"
//let doesFileExist = findFileNamed("testfile")
//if doesFileExist == true {
//    openFileNamed("testfile")
//} else {
//    reportError("testfile not found")
//}



//example, of how a conditional can be exoressed in 2 ways, meaning the same thing:
//#1
func takeUmbrella() {
    // grab umbrella
    print("I have my umbrella! ☂️")
}

var rainingOutside = false

if rainingOutside == true {
    takeUmbrella()
} else {
    // don't worry about taking the umbrella
    // NB no code is being excuted here, only comments!
}

//#2
if rainingOutside {
    takeUmbrella()
} else {
    // don't worry about taking the umbrella
    // no code is being excuted here, only comments!
}
//both do the same thing


// ############
// ##############
// HOW TO USE A FUNCTION THAT RETURNS BOOLEAN
// ###############################################
//func test(a: Bool, b: Bool) -> Bool {
//    //...
//}
//
//if test(a: x, b: y) {
//    //...
//}


// chaining conditionals together

//if sallyDressColor == "yellow" {
//    wearSomethingGreen()
//} else if sallyDressColor == "blue" {
//    wearSomethingPurple()
//} else if sallyDressColor == "red" {
//    wearSomethingOrange()
//} else if sallyDressColor == "green" {
//    wearSomethingBlue()
//} else {
//    print("Something else")
//}
//// that's a lot of decision-making!
