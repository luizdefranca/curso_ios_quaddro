//
//  main.swift
//  swift_programming_from_scratch-exercicio1-08
//
//  Created by LuizRamos on 05/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 “You are given Rocky's age in dog years. Print Rocky's age in human years. You know that 1 human year is 7 dog years.”
 
 “Example 1
 
 Input:
 
 var rockysAge = 50
 Output:
 
 7”
 */

print("Rocky's age: ")
let inputRockysAge = readLine()
if let rockysAge = Int(inputRockysAge!){
    let humanYears = rockysAge / 7
    print("Human years: ", humanYears)
}

