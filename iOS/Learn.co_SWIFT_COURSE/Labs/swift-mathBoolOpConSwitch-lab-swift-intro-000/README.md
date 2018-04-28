## Fun with Basics!

![Ayn Rand](http://i.imgur.com/PSrvvAf.jpg?1)
> If you don't know, the thing to do is not to get scared, but to learn. -[Ayn Rand](https://en.wikipedia.org/wiki/Ayn_Rand)

## Overview

This lab will give you practice writing functions that incorporate math, booleans, conditional, and swift statements. 

##Instructions
In this final lab within this section, you'll be creating three functions. All of your functions should be written in the `ViewController.swift` file located in the `AllTheBasics.xcodeproj` file.

**1** - Create a function `averageIsAbove75(a:b:c:)` which takes in three arguments labeled as `a`, `b` and `c` all of type `Double`. This function should return back a `Bool` value. In your implementation of this function you should calculate the average of the three arguments passed into this function. If the average is greater than 75.0, then return `true`, else return `false`.

For example, if we were to call on this function we would get the following results:

````Swift
averageIsAbove75(a: 55, b: 25, c: 24)
// false

averageIsAbove75(a: 100, b: 85, c: 90)
// true
````



**2** - Create a function `passwordCombo(username:password:)` which takes in two arguments. The first argument labeled `username` should be of type `String`. The second argument labeled `password` should be of type `Int`. This function should return back a `String` value. The `String` value you should return depends on whether or not the username/password combination is correct.

What makes it correct? `username` must be either 'Jerry', 'Elaine', or 'Michael'. The password must be divisible by 3. If both conditions are true, then return back the `String` "Welcome!". If either fail, then the `String` value to be returned should be "Access Denied"

Calling this function should yield the following results.
````Swift
passwordCombo(username: "Bran", password: 22)
// "Access Denied

passwordCombo(username: "Elaine", password: 20)
// "Access Denied"

passwordCombo(username: "Elaine", password: 33)
// "Welcome!"
````






**3** - Create the function `describe(emoji:)`. It should take in one argument of type `String` and return back a `String`.

You should switch on the `emoji` argument in your implementation and return back a `String` value describing the emoji that is passed in as an argument. The emoji's and their descriptions you should include in your switch statement are the following:

💋 - "Kiss"  
🐈 - "Cat"  
🐢 - "Turtle"  
🍕 - "Pizza"  
👻 - "Ghost"  

For the default case, we should return back the `String` "Unknown".

![](https://media.giphy.com/media/l0MYATH9ZumUHCBXy/giphy.gif)



<p class='util--hide'>View <a href='https://learn.co/lessons/swift-mathBoolOpConSwitch-lab'>Math Bool Op Con Switch Lab</a> on Learn.co and start learning to code for free.</p>
