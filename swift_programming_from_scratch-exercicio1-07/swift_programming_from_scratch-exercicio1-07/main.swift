//
//  main.swift
//  swift_programming_from_scratch-exercicio1-07
//
//  Created by LuizRamos on 05/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given a number a. Print the last digit of a.”
 
 “Example 1
 
 Input:
 a = 123
 Output:
 3"
 */

print("a = ")
let inputA = readLine()
if let a = Int(inputA!){
    let lastDigit = a % 10
    print("lastDigit = ", lastDigit)
}
