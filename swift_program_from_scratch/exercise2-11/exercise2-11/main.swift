//
//  main.swift
//  exercise2-11
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
 “You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
 100 represents full health
 0 represents dead.
 You want to add regenerating health to the game using the following rules:
 
 HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 ...)
 When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, ...)
 If the character has 0 HP then he doesn't regenerate life (he's dead)
 Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.
 
 Code
 
 var hp = 75”
 
 “Example 1
 
 Input:
 
 var hp = 60
 Output:
 
 60
 Example 2
 
 Input:
 
 var hp = 26
 Output:
 
 30
 Example 3
 
 Input:
 
 var hp = 12
 Output:
 
 20
 Example 4
 
 Input:
 
 var hp = 4
 Output:
 
 20
 Example 5
 
 Input:
 
 var hp = 95”
 
 Output:
 
 100
 
 */

print("hp")
let hp = readLine()
var x0 = 0
if let hp = Int(hp!){
    if hp < 20 {
        x0 = 20
        
    } else if hp % 10 == 0{
        x0 = hp
        
    } else {
        x0 = (hp/10 + 1) * 10
        
    }
    print(x0)
}

