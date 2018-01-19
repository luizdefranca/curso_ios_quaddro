//
//  main.swift
//  exercise2-4
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given three variables a, b and c. Check if at least two variables have the same value. If that is true print At least two variables have the same value otherwise print All the values are different.
 
 Code
 
 var a = 2
 var b = 3
 var c = 2
 
 // your code here
 Example 1
 
 Input:
 
 var a = 1
 var b = 2
 var c = 3
 Output:
 
 All the values are different”
 
 */

print("a: ")
let a = readLine()
print("b: ")
let b = readLine()
print("c: ")
let c = readLine()

if let a = Int(a!), let b = Int(b!), let c = Int(c!){
    if a == b || a == c || b == c {
        print("At least two variables have the same value")
    } else {
        print("All the values are differents")
    }
}
