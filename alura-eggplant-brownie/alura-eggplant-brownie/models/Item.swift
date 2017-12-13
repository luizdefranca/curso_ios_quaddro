//
//  Item.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation
final class Item{
    let name: String
    let calories: Double
    
    init(_ name: String,_ calories: Double){
        self.name = name
        self.calories = calories
    }
}
