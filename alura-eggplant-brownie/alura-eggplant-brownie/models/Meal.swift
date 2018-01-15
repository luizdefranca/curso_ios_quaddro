//
//  Meal.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation
import UIKit

final class Meal{
    let happiness: Int
    let name: String
    let items : [Item]
    
    
    
    init(happiness: Int, name: String, items: Array<Item> = []) {
        self.happiness = happiness
        self.name = name
        self.items = items
    }
    
    func allCalories() -> Double{
        var sum = 0.0
        for item in items{
            sum += item.calories
      }
        return sum
    }
    
    func detail() -> String{
        var message = "Happiness: \(self.happiness)"
        for item in items{
            message += ", \(item.name) - calories: \(item.calories) \n"
        }
        
        return message
    }
}
