//
//  main.swift
//  exercise3-3
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
 You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
 Print the total cost of the meal.
 
 Code”
 
 “var mealCost:Double = 3.5
 var tip:Int = 20 // 20% tip
 
 // your code here
 Example 1
 
 Input:
 
 var mealCost:Double = 3.5
 var tip:Int = 20
 Output:
 
 4.2
 Example 2
 
 Input:
 
 var mealCost:Double = 10.0
 var tip:Int = 10
 Output:
 
 11.0
 ”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */
print( "Meal cost: ")
let mealCost = readLine()
if let mealCost = Double(mealCost!){
    let tip = 0.2 * mealCost
    print(mealCost)
}
