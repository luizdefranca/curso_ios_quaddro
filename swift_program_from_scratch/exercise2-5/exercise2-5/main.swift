//
//  main.swift
//  exercise2-5
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
 Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you “need to throw out.
 If you can cook bacon and eggs print you can cook bacon and eggs.
 If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.
 
 Code
 
 var baconAge = 6 // the bacon is 6 days old
 var eggsAge = 12 // eggs are 12 days old
 
 // your code here
 Example 1
 
 Input:
 
 var baconAge = 3
 var eggsAge = 2
 Output:
 
 you can cook bacon and eggs
 
 */
print("baconAge: ")
let baconAge = readLine()
print("eggsAge: ")
let eggsAge = readLine()
if let baconAge = Int(baconAge!), let eggsAge = Int(eggsAge!){
    if baconAge < 7 && eggsAge < 21 {
        print("You can cook bacon and eggs")
    } else {
        if baconAge > 7 {
            print("Throw out bacon")
        }
        if eggsAge > 21 {
            print("Throw out eggs")
        }
    }
}
