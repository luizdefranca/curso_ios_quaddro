//
//  main.swift
//  exercise4-5
//
//  Created by LuizRamos on 21/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Given an integer N draw a square of N x N asterisks. Look at the examples.
 
 Code
 
 “var N = 4
 
 // your code here
 Example 1
 
 Input:
 
 var N = 1
 Output:
 
 *
 Example 2
 
 Input:
 
 var N = 2
 Output:
 
 **
 **
 Example 3
 
 Input:
 
 var N = 3
 Output:
 
 ***
 ***
 ***
 ”
 
 
 
 */

let N = 5

func printBeginOrEnd(_ n : Int ){
    for p in 1...n {
        print("-", terminator: "")
    }
    print()
}
func middle(_ n : Int){
    print("|", terminator: "")
    for n in 1...N-2 {
        print("*", terminator: "")
    }
    print("|")
    print()
}
printBeginOrEnd(N)
middle(N)
printBeginOrEnd(N)

