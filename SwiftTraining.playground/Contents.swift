//: Playground - noun: a place where people can play

import UIKit

//STRING VARIABLES

var str = "Hello, Sharad"
print(str)

str = "Mobisoft Infotech"
print(str)

var name = "Sharad"
var food = "Burgers"

print("\(name) likes to eat \(food)")


//Ints VARIABLES

var score = 0
var add = 5

score += add * 2
print(score)

print("Final Score: \(score)")

//Doubles VARIABLE

var double1: Double = 1.1
var double2: Double = 2.2

print(double1 + double2)

//Booleans VARIABLES

var state1 = true
var state2 = false

var state3 = state2

print(String(state1))



//ARRAY
var fruits = ["Apple","Banana", "Melon","Pear"]

fruits[0]
fruits[1]
fruits[2]
fruits[3]

fruits.append("Lemon")

fruits.count

fruits[4]

fruits.insert("Orange", at: 0)

fruits.count

fruits[0]

fruits.remove(at: 1)

fruits.count

print(fruits)

fruits.sort()

print(fruits)


//IF STATEMENTS

//For Booleans
var state = true

if state == true{
    print("Allow Aceess")
} else {
    print("Denied Access")
}

//For Strings
name = "Sharad Katre"
if name == "Sharad" {
    print("Correct..")
} else if name == "Katre" {
    print("Correct...")
} else {
    print("Incorrect..")
}

//For Numbers
var number = 20

if number >= 10 {
    print("Heigher")
} else {
    print("Lower")
}


//For Multiple Conditions
var color = "Black"
if color == "Green" || color == "Red" {
    print("Great Color")
} else {
    print("Wrong Color")
}


var foreName = "Mahesh"
var surName = "Katre"

if foreName == "Sharad" && surName == "Katre" {
    print("Hello " + foreName + " " + surName)
} else if foreName != "Sharad" && surName != "Katre"{
    print("Forename and Surname Incorrect")
} else if foreName == "Sharad" {
    print("Surname Incorrect")
} else if surName == "Katre" {
    print("Forename Incorrect")
}


//Loops

//While Loop

var time = 0
while time <= 20 {
    
    print(time)
    time += 5
}

time = 1
var numberArray = [1,2,3,4,5,6,7,8,9,10]

while time < numberArray.count {
    numberArray[time] += 10
    time += 1
}
print(numberArray)

//For Loop
numberArray = [1,2,3,4,5,6,7,8,9,10]

for number in numberArray {
    print(number)
}

var wordArray = ["Apple","Banana","Pear","Lemon"]

for word in wordArray {
    print(word + " is a Nice Fruit")
}


