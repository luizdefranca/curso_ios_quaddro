//
//  main.swift
//  exercise2-9
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Test if number is divisible by 3, 5 and 7. For example 105 is divisible by 3, 5 and 7, but 120 is divisible only by 3 and 5 but not by 7. If number is divisible by 3, 5 and 7 print number is divisible by 3, 5 and 7 otherwise print number is not divisible by 3, 5 and 7.
 
 Code
 
 let number = 210
 
 // your code here
 Example 1
 
 Input:
 
 var number = 60
 Output:
 
 number is not divisible by 3, 5 and 7”
 
 */

print("number")
let number = readLine()
if let number = Int(number!){
    if (number % 3 == 0) && (number % 5 == 0) && (number % 7 == 0) {
        print("Number is divisible by 3, 5, 7.")
    } else {
        print("Number is not divisible by 3, 5, 7.")
    }
}
