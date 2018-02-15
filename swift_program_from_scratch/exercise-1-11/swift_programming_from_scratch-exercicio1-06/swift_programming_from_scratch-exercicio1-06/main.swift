//
//  main.swift
//  swift_programming_from_scratch-exercicio1-06
//
//  Created by LuizRamos on 05/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 “Given two variable a and b, swap their values. That is the new value of a will become the old value of b and vice versa.”
 
 “Example 1
 
 Input:
 
 var a = 1
 var b = 2
 Expected values:
 
 a = 2
 b = 1”
 
 */



print("a: ")
let inputA = readLine()
print("b: ")
let inputB = readLine()

if var a = Double(inputA!), var b = Double(inputB!){
    let swap = a
    a = b
    b = swap
    print("a: ", a)
    print("b: ", b)
}


