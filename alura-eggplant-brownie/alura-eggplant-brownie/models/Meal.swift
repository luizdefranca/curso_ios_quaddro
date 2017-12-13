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
    let items = Array<Item>([])
    
    init(happiness: Int, name: String) {
    self.happiness = happiness
    self.name = name
    }
    
    func allCalories() -> Double{
        var sum = 0.0
        for item in items{
            sum += item.calories
      }
        return sum
    }
    
}
