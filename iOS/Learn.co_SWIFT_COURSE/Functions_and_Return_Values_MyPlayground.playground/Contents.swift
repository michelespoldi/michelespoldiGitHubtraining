//: Playground - noun: a place where people can play

import UIKit

func printAge(name: String) {
    print("\(name) is 29")
}


func happyBirthday(age: Int) {
    print("Happy birthday #\(age)!")
}

func getAge(name: String) -> Int {
    return 29
}

//-> tells SWIFT the function returns a value

let friend = "Emily"
var friendAge = getAge(name: friend)

//passing the age to happyBirthday function
happyBirthday(age: friendAge)


func birthdayGreeting(age: Int) -> String {
    return "Happy birthday #\(age)!"
}

birthdayGreeting(age: 30)

//combining printing a string and returning values
func getAgeAndCongratulate(name: String) -> Int {
    let age = 29
    print("Happy \(age)th birthday, \(name)!")
    return age
}


let friend2 = "Pete"
var friend2Age = getAgeAndCongratulate(name: friend2)


//Time to play around with the concepts presented above
//Crete a function, that takes a cat name and accordingly returns a cats age
let cat1Name = "Kosmos"
let cat2Name = "Kometka"

func catAge(name: String) -> Int {
    if name == "Kosmos" {
        return 1
    } else if name == "Kometka" {
        return 3
    } else {
      print("Name unknown, fatal error")
        return -99999999999
    }
}

//print the cats name and its age
var cat1Age = catAge(name: cat1Name)
print("\(cat1Name) is \(cat1Age) years old!")
var cat2Age = catAge(name: cat2Name)
print("\(cat2Name) is \(cat2Age) years old!")

//we check the else statement
var cat3Age = catAge(name: "Janusz")
print("\("Janusz") is \(cat3Age) years old!")


//func catAgePrint(name: String){
//    print("\(name) is \(catAge) years old")
//}
//
//
//
//catAgePrint(name: "Kometka")



