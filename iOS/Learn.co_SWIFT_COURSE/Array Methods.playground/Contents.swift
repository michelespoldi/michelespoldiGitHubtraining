//: Playground - noun: a place where people can play

import UIKit

/*
 Add element to the end of the array using append()
 Insert an element at the specified index using insert(_:at:)
 Remove an element at the specified index using remove(at:)
 Use Subscript Syntax to change elements at a specified index and access the element at a specified index to store in a variable
 */

var toMakeTea = [
    "Boil Water",
    "Add tea bag to cup",
    "Wait ten minutes",
    "Add Milk",
    "Drink"
]

/*
 If steps need to be added, removed, or changed at a particular index in the array, then you also need to know what the index of the value is. When you have a simple list of unchanging values, then maybe this is simple, but with a larger list processed in a loop, there is another way, the .enumerated method that you call on an array variable
 */

for (index, step) in toMakeTea.enumerated() {
    print("\(index + 1). \(step)")
}


/* Before undertaking any further actions, it's a good idea to check if the array you would like to work with actually has any values in it. Of course there's a method to help, .isEmpty. */
 
 if toMakeTea.isEmpty {
 print("No tea yet :(")
 } else {
 print("Ready to make tea! :)")
 }
 
 // prints "No tea yet :( unless toMakeTea is initialised"


/* There are some methods that help you access certain properties of an array, one is to find the size of an array, or the number of values it contains. */
print(toMakeTea.count)
// 5


//ADD ITEMS TO AN ARRAY
toMakeTea.append("Enjoy!")
print(toMakeTea)
// ["Boil Water", "Add tea bag to cup", "Wait ten minutes", "Add Milk", "Drink", "Enjoy!"]



//You have also forgotten an important step at the beginning of the list, adding water to the kettle, so let's add it:
toMakeTea.insert("Add water to kettle", at: 0)
print(toMakeTea)
// ["Add water to kettle", "Boil Water", "Add tea bag to cup", "Wait ten minutes", "Add Milk", "Drink", "Enjoy!"]



//CHANGING ITEMS IN AN ARRAY
print(toMakeTea) //"Wait ten minutes"
toMakeTea[3] = "Wait 3-5 minutes"
print(toMakeTea) //"Wait 3-5 minutes"
// ["Add water to kettle", "Boil Water", "Add tea bag to cup", "Wait 3-5 minutes", "Add Milk", "Drink", "Enjoy!"]




//REMOVING ITEMS FROM AN ARRAY
print(toMakeTea) //["Add water to kettle", "Boil Water", "Add tea bag to cup", "Wait 3-5 minutes", "Add Milk", "Drink", "Enjoy!"]
toMakeTea.remove(at:6)
print(toMakeTea) // ["Add water to kettle", "Boil Water", "Add tea bag to cup", "Wait 3-5 minutes", "Add Milk", "Drink"]



/* Note that if you try to access or change the value of an index in the array that doesn't exist, you will receive an error. To prevent this error, you could combine the code above with some if else statements and the count method you saw earlier in the lesson. For example: */
if toMakeTea.count > 6 {
    toMakeTea.remove(at: 6)
} else {
    print("There is no value at index 6")
}
