//
//  main.swift
//  exercise-1-11
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*

 “A class consists of numberOfBoys boys and numberOfGirls girls.
 Print the percentage of boys in the class followed by the percentage of girls in the class. The percentage should be printed rounded down to the nearest integer. For example 33.333333333333 will be printed as 33.”
 
 “Input:
 
 var numberOfBoys = 20
 var numberOfGirls = 60
 Output:
 
 25 // percentage of boys
 75 // percentage of girls
 ”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 
 */


print ("number of boys: ")
let numberOfBoys = readLine()
print("number of girls: ")
let numberOfGirls = readLine()

if let numberOfBoys = Int(numberOfBoys!), let numberOfGirls = Int(numberOfGirls!){
    let total = numberOfGirls + numberOfBoys
    let percentageOfBoy = numberOfBoys * 100 / total
    let percentageOfGirls = numberOfGirls * 100 / total
    print("percentagem of boys: \(percentageOfBoy)")
    print("percentagem of girls: \(percentageOfGirls)")
}
