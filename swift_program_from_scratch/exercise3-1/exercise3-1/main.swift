//
//  main.swift
//  exercise3-1
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given 2 Doubles a and b. Print their average.
 
 Code
 
 var a = 2.0
 var b = 5.0
 
 // your code here
 Example 1
 
 Input:”
 
 “var a = 2.0
 var b = 5.0
 Output:
 
 3.5
 Example 2
 
 Input:
 
 var a = 20.0
 var b = 40.0
 Output:
 
 30.0”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 */

print("a: ")
let a = readLine()
print("b: ")
let b = readLine()
if let a = Double(a!), let b = Double(b!){
    let average = (a + b)/2
    print(average)
    
}
