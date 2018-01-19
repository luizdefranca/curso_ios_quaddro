//
//  main.swift
//  exercise2-1
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//


import Foundation
/*
 “You are given two numbers a and b print the largest one.
 
 Code
 
 var a = 11
 var b = 22
 
 // your code here
 Example 1
 
 Input:
 
 var a = 11
 var b = 22”
 
 Output:
 
 22
 
 */
print("a: ")
let a = readLine()
print("b: ")
let b = readLine()
if let a = Int(a!), let b = Int(b!){
    if a > b {
        print("the largest number is: \(a)")
    }else if b > a {
        print("the largest number is: \(b)")
    }else {
        print("the numbers are equal")
    }
}

