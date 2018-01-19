//
//  main.swift
//  exercise2-8
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 “If you use arc4random() it will give you a random number. Generate a random number and use it to simulate a coin toss. Print heads or tails.
 
 Code
 var randomNumber = arc4random()
 
 */
let randomNumber = arc4random()
if randomNumber % 2 == 0 {
    print("heads")
} else {
    print("tails")
}
