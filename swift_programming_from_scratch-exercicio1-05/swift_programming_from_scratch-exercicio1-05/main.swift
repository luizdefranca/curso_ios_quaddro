//
//  main.swift
//  swift_programming_from_scratch-exercicio1-05
//
//  Created by LuizRamos on 04/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

/*
 “You are given four variables width, height, x, y that describe the dimensions of a L-shape as shown in the image below. Determine the perimeter and area of the described L-shape. Store the value of the perimeter in a variable named perimeter, and the area in a variable named area.”
                    X
                *********
                *       *
                *       *
                *       *
      Heigth    *       *********
                *               *
                *               *   Y
                *               *
                *****************
                    width
 */

print("width")
let width_input = readLine()
print("height")
let heigth_input = readLine()
print("x")
let x_input = readLine()
print("y")
let y_input = readLine()

if let width = Double(width_input!), let heigth = Double(heigth_input!), let x = Double(x_input!), let y = Double(y_input!){
    let horiz_diff = width - x
    let vert_diff = heigth - y
    let area = (heigth * width) - (horiz_diff * vert_diff)
    let perimeter = 2 * heigth + 2 * width
    print("area: ", area)
    print("perimeter: ", perimeter)
}










