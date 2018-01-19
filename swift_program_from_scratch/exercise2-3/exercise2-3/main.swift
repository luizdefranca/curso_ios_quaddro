//
//  main.swift
//  exercise2-3
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given two numbers a and b. Print "divisible" if a is divisible by b and "not divisible" otherwise.”
 
 Code
 “var a = 12
 var b = 3
 
 // your code here
 Example 1
 
 Input:
 
 var a = 22
 var b = 11
 Output:
 
 divisible”
 
 
 
 */

print("a: ")
let a = readLine()
print("b: ")
let b = readLine()
if let a = Int(a!), let b = Int(b!){
    if a % b == 0 {
        print("divisible")
    }else {
        print("not divisible")
    }
}
