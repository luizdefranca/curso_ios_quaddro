//
//  main.swift
//  exercise2-2
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given a number. Print even if the number is even or odd otherwise.
 
 Code
 
 let number = 2
 
 // your code here
 Example 1
 
 Input:
 
 var number = 1
 Output:
 
 odd
 Example 2”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

print("number: ")
let number = readLine()
if let number = Int(number!){
    if number % 2 == 0 {
        print("even")
    } else {
        print("odd")
    }
}
