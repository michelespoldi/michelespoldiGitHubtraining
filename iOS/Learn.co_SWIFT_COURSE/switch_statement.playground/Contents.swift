//: Playground - noun: a place where people can play

import UIKit

//If/else conditional, with multiple elses
//if sallyDressColor == "yellow" {
//    wearSomethingGreen()
//} else if sallyDressColor == "blue" {
//    wearSomethingPurple()
//} else if sallyDressColor == "red" {
//    wearSomethingOrange()
//} else if sallyDressColor == "green" {
//    wearSomethingBlue()
//} else ...
//// that's a lot of decision-making!


////the same conditional, but using switch
//switch sallyDressColor  {
//case "yellow":
//    wearSomethingGreen()
//
//case "blue":
//    wearSomethingPurple()
//
//case "red":
//    wearSomethingOrange()
//
//case "green":
//    wearSomethingBlue()
//
//default:
//    wearSomethingBlack()
//}


//excercise time

var a = 1

func letsTryIf(){
if a == 1 {
    print("A = 1")
} else if a == 2 {
    print("A = 2")
} else {
    print("A is a way different value than 1 or 2")
}
}

letsTryIf()

//now lets try to do the same thing using a switch
var b = 3

func letsTrySwitch() {
    switch b {
    case 1:
        print("B = 1")
    case 2:
        print("B = 2")
    default:
        print("B is a different value than 1 or 2")
    }
}

letsTrySwitch()

//switch makes a great way to check booleans
switch 5 <= 3 {
case true:
    print("true")
    
default:
    print("it ain't true")
}



//ranges with switch
//if statement
let x = 9

if x >= 1 && x <= 5 {
    print("x is in the range of 1-5")
} else if x >= 6 && x <= 10 {
    print("x is in the range of 6-10")
}

// prints "x is in the range of 6-10"

//switch
let y = 9

switch y {
case 1...5:
    print("y is within the range of 1-5")
case 6...10:
    print("y is within the range of 6-10")
default:
    print("y is greater than 10")
}

// prints "x is within the range of 6-10"



