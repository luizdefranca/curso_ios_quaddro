//
//  main.swift
//  exercise4-4
//
//  Created by LuizRamos on 21/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “Write all the numbers from 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1).
 
 Code
 
 var N = 5
 
 // your code here
 Example 1”
 
 “Input:
 
 var N = 4
 Output:
 
 1
 4
 2
 3
 Example 2
 
 Input:
 
 var N = 9
 Output:
 
 1
 9
 2
 8
 3
 7
 4
 6
 5
 Hint 1
 
 Use two variables to remember the left and right index that you need to print next.
 
 Hint 2
 
 There's a special case you'll have to handle when N is odd.”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.” iBooks.
 
 */

let N = 9
let isOdd = false ? N % 2 == 0 : true

for p in 1...N/2{
    print(p)
    print(N-p+1)
    
}
if isOdd {
    print((N/2) + 1)
}
