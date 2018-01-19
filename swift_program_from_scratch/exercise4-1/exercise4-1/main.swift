//
//  main.swift
//  exercise4-1
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Write a program that writes "I will not skip the fundamentals!" N times.
 
 Code
 
 var N = 10
 
 // your code here
 Example 1
 
 Input:
 
 var N = 3
 Output:”
 
 “I will not skip the fundamentals!
 I will not skip the fundamentals!
 I will not skip the fundamentals!
 Example 2
 
 Input:
 
 var N = 5
 Output:
 
 I will not skip the fundamentals!
 I will not skip the fundamentals!
 I will not skip the fundamentals!
 I will not skip the fundamentals!
 I will not skip the fundamentals!”
 
 
 
 */

let N = 3
let phrase = "I will not skip the fundamentals!"
for times in 1...N{
    print(phrase, terminator: "..\n")
}
