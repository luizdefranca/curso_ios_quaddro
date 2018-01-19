//
//  main.swift
//  exercise3-4
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given a variable number of type Double. Create a new variable called roundedNumber that has at most 1 digit after the decimal dot.
 
 “Code
 
 var number = 5.1517
 // your code here
 Example 1
 
 Input:
 
 var number = 5.1517
 Expected values:
 
 roundedNumber = 5.1
 Example 2
 
 Input:
 
 var number = 32.5
 Expected values:
 
 roundedNumber = 32.5
 Example 3
 
 Input:
 
 var number = 2.0
 Expected values:
 
 roundedNumber = 2.0”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

print("number = ")
let number = readLine()
if let number = Double(number!){
    let roundedNumber : Double = Double(Int(number * 10))/10
    print("roundedNumber = \(roundedNumber)")
}
