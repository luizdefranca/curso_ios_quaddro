//
//  main.swift
//  swift_programming_from_scratch-exercicio02
//
//  Created by LuizRamos on 04/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

//“Determine the number of seconds in a year and store the number in a variable named secondsInAYear”
//
//Excerpt From: Unknown. “Swift Programming from Scratch.”

let secondsInAMinute = 60
let minuteInAnHour = 60
let hourInADay = 24
let daysInAYear = 365
let secondsInAYear = (((secondsInAMinute * minuteInAnHour) * hourInADay) * daysInAYear)

print(secondsInAYear)


