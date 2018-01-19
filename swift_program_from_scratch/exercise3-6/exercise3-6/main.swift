//
//  main.swift
//  exercise3-6
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “A farmer is harvesting wheat from a number of wheat fields, given in a variable numberOfFields of type Int.
 Each field produces the same quantity of wheat given in a variable wheatYield of type Double.
 Sometimes the harvest is increased by 50% due to favorable weather conditions. You are given this information in a variable weatherWasGood of type Bool.
 Print the total amount of wheat that the farmer will harvest.
 
 Code
 
 var numberOfFields:Int = 5
 var wheatYield:Double = 7.5
 var weatherWasGood:Bool = true
 
 // your code here
 Example 1
 
 Input:
 
 var numberOfFields:Int = 5
 var wheatYield:Double = 7.5
 var weatherWasGood:Bool = true”
 
 “Output:
 
 56.25
 Example 2
 
 Input:
 
 var numberOfFields:Int = 5
 var wheatYield:Double = 7.5
 var weatherWasGood:Bool = false
 Output:
 
 37.5”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

print("Number of Fields: ")
let numberOfFields = readLine()
print("wheatYield: ")
let wheatYeild = readLine()
print("The weather was good: ")
let weatherWasGood = readLine()

if let numberOfFields = Int(numberOfFields!), let wheatYield = Double(wheatYeild!), let weatherWasGood = Bool(weatherWasGood!){
    if weatherWasGood {
        let totalAmountOfWheat = Double(numberOfFields) * wheatYield * 1.5
        print(totalAmountOfWheat)
    }else {
        let totalAmountOfWheat = Double(numberOfFields) * wheatYield 
        print(totalAmountOfWheat)
    }
}
