//
//  Item.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation
final class Item: Equatable{
    
    let name: String
    let calories: Double
    
    init(_ name: String,_ calories: Double){
        self.name = name
        self.calories = calories
    }
}

 func ==(first: Item, second: Item) -> Bool {
    return first.name == second.name && first.calories == second.calories
}
