//
//  main.swift
//  swift_programming_from_scratch-exercicio1-03
//
//  Created by LuizRamos on 04/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 “Your are given the width and height of a screen in pixels. Calculate the total number of pixels on the screen and store the result in a variable named numberOfPixels.”
 
 Excerpt From: Unknown. “Swift Programming from Scratch.”
 
 */



print("width: ")
let width_input = readLine()
print("heigth: ")
let heigth_input = readLine()

if let width = Double(width_input!), let heigth = Double(heigth_input!){
    let numberOfPixels = width * heigth
    print("number of Pixels: \(numberOfPixels)")
}
