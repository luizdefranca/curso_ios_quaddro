//
//  main.swift
//  swift_programming_from_scratch
//
//  Created by LuizRamos on 04/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 
 Caption 01
 
 */

// exercise 01
//“You are given two variables num_a and num_b, compute their sum and store it in another
//variable named sum then print the result.”


var num_a = 0.0, num_b = 0.0
print("write the first number: ")

var input = readLine()
if let input = input{
    num_a = Double(input)!
}

print("write another number: ")
if let input = readLine(){
    num_b = Double(input)!
}


let sum : Double = num_a + num_b
print("sum = \(sum)")




