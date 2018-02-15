//
//  main.swift
//  swift_programming_from_scratch-exercicio1-04
//
//  Created by LuizRamos on 04/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 
 “You are given the sum and the difference of two numbers. Find out the values of the original numbers and store them in variables a and b.”
 
 */

print("sum: ")
let sum_input = readLine()

print("diff: ")
let diff_input = readLine()

if let sum = Double(sum_input!), let diff = Double(diff_input!){
    let a = (sum + diff)/2
    let b = sum - a
    print("a: ", a)
    print("b: ", b)
    
}
