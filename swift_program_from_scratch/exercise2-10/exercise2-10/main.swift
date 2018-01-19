//
//  main.swift
//  exercise2-10
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Find out if the point (x, y) is inside of the rectangle with the lower-left corner in (lowX, lowY) and the upper-right in (highX, highY). Print inside or not inside depending on the case.
 
 Code
 
 var x = 1
 var y = 2
 var lowX = 1
 var lowY = 1
 var highX = 3
 var highY = 3
 
 // your code here
 Example 1
 
 Input:
 
 var x = 1
 var y = 2
 var lowX = 1
 var lowY = 1
 var highX = 3
 var highY = 3
 Output:
 
 "inside”
 
 “Example 2
 
 Input:
 
 var x = 2
 var y = 2
 var lowX = 1
 var lowY = 1
 var highX = 3
 var highY = 3
 Output:
 
 "inside”
 
 “Example 3
 
 Input:
 
 var x = 4
 var y = 4
 var lowX = 0
 var lowY = 0
 var highX = 3
 var highY = 5”
 
 Output:
 
 "not inside"
 
 */

print("x")
let x = readLine()
print("y")
let y = readLine()
print("lowX")
let lowX = readLine()
print("lowY")
let lowY = readLine()
print ("highX")
let highX = readLine()
print("highY")
let highY = readLine()

if let x = Int(x!), let y = Int(y!), let lowX = Int(lowX!), let lowY = Int(lowY!), let highX = Int(highX!), let highY = Int(highY!){
    
    if x >= lowX && x <= highX && y >= lowY && y <= highY {
        print("inside")
    } else {
        print("not inside")
    }
}
