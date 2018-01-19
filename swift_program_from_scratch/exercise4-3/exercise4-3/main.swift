//
//  main.swift
//  exercise4-3
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 “Print the powers of 2 that are less than or equal to N.
 
 Code
 
 var N = 10
 
 // your code here
 Example 1
 
 Input:
 
 var N = 5”
 
 “Output:
 
 2
 4
 Example 2
 
 Input:
 
 var N = 100
 Output:
 
 2
 4
 8
 16
 32
 64
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 */

let N = 100
var power = 2
while power < N{
    print(power)
    power *= 2
}

