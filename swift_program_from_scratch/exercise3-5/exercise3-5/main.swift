//
//  main.swift
//  exercise3-5
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of type Double.
 You are also given your grade in the class stored in a variable yourGrade of type Double.
 Print above average if your grade is greater than the class average or below average" otherwise.
 Note: the average of the class includes your grade.
 
 Code
 
 var grade1 = 7.0
 var grade2 = 9.0
 var grade3 = 5.0
 var yourGrade = 8.0
 
 // your code here
 Example 1
 
 Input:
 
 var grade1 = 7.0
 var grade2 = 9.0
 var grade3 = 5.0
 var yourGrade = 8.0
 Output:
 
 "above average”
 
 
 
 */

print("grade1")
let grade1 = readLine()
print("grade2")
let grade2 = readLine()
print("grade3")
let grade3 = readLine()
print("yourGrade")
let yourGrade = readLine()

if let grade1 = Double(grade1!), let grade2 = Double(grade2!), let grade3 = Double(grade3!), let yourGrade = Double(yourGrade!){
    let average = (grade1 + grade2 + grade3)/3
    if yourGrade > average {
        print("above average")
    }else if yourGrade < average {
        print ("below average")
    }else {
        print("equals average")
    }
}
