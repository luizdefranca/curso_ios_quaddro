//
//  main.swift
//  swift_program_from_scratch-1-9
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//
/*
 
 “Everyone hates solving word problems by hand so let's make a program to solve them for us.
 x years from now Alice will be y times older than her brother Bob. Bob is 12 years old. How many years does Alice have?”
 
 “var x = 3
 var y = 2
 var bob = 12
 
 var alice = 27”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

import Foundation

print("x years form now Alice: ")
let x = readLine()

print("y times older than her brother Bob: ")
let y = readLine()

print("Age of Bob: ")
let bob = readLine()

if let x = Int(x!), let y = Int(y!), let bob = Int(bob!){
    let alice : Int = y * (bob + x) - x
    print("The age of Alice is: \(alice)")
}


