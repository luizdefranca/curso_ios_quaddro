//
//  main.swift
//  exercise4-2
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Print the first N square numbers. A square number, also called perfect square, is an integer that is obtained by squaring some other integer; in other words, it is the product of some integer with itself (ex. 1, 4 = 2 2, 9 = 3 3 ...).
 
 Code
 
 var N = 10
 
 // your code here”
 
 “Example 1
 
 Input:
 
 var N = 2
 Output:
 
 1
 4
 Example 2
 
 Input:
 
 var N = 5
 Output:
 
 1
 4
 9
 16
 25”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

let N = 5
for number in 1...N{
    print(number * number)
}
