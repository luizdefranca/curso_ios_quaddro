//: Playground - noun: a place where people can play

import Cocoa

/*

 Caption 01
 
 */

// exercise 01
//“You are given two variables num_a and num_b, compute their sum and store it in another
//variable named sum then print the result.”


var num_a = 0.0, num_b = 0.0
print("write the first number: ")
if let input = readLine(){
    num_a = input as! Double
}
print("write another number: ")
if let input = readLine(){
    num_b = Double(input)!
}

let sum = num_a + num_b
print("sum = \(sum)")



