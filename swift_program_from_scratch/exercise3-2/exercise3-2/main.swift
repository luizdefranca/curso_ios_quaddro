//
//  main.swift
//  exercise3-2
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given 3 grades stored in 3 variables of type Double: finalsGrade, midtermGrade, projectGrade. These grades are used to compute the grade for a class. finalsGrade represents 50% of the grade. midtermGrade represents 20% of the grade. projectGrade represents 30% of the final grade.
 Print the grade for the class.
 
 Code
 
 var finalsGrade = 2.0
 var midtermGrade = 4.0
 var projectGrade = 3.0”
 
 “Example 1
 
 Input:
 
 var finalsGrade = 2.0
 var midtermGrade = 5.0
 var projectGrade = 3.0
 Output:
 
 2.7”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */
print("finalsGrade = ")
let finalsGrade = readLine()
print("midtermGrade = ")
let midtermGrade = readLine()
print("projectGrade = ")
let projectGrade = readLine()
if let finalsGrade = Double(finalsGrade!), let midtermGrade = Double(midtermGrade!), let projectGrade = Double(projectGrade!){
    let average = (finalsGrade * 0.50 + midtermGrade * 0.20 + projectGrade * 0.30)
    print(average)
}
