//
//  main.swift
//  exercise1-10
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 “You have x apples. Bob trades 3 oranges for 5 apples. He does not accept trades with cut fruit.
 How many oranges can you get from Bob and how many apples will you have left?
 
 The number of apples you will have left should be stored in a variable named apples. The number of oranges you will have after the trade should be stored in a variable named oranges.”
 
 “Example 1
 
 Input:
 
 var x = 17
 Expected values:”

 “apples = 2
 oranges = 9”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
  */

print("number of apples")
let x = readLine()
if let x = Int(x!){
    let multiplyOfFive = x / 5
    let oranges = 3 * multiplyOfFive
    let apples = x % 5
    print("apples = \(apples)")
    print("oragens = \(oranges)")
}
