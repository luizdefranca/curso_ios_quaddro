import Foundation
import UIKit

class Meal{
    var happiness: Int
    var name: String
    var items = Array<Item>()
    
    init(happiness: Int, name: String) {
        self.happiness = happiness
        self.name = name
    }
    
    func allCalories() -> Double{
        var sum : Double = 0.0
        for item in items{
            sum += item.calories
        }
        return sum
    }
    
}

import Foundation
class Item{
    var name: String
    var calories: Double
    
    init(_ name: String,_ calories: Double){
        self.name = name
        self.calories = calories
    }
}

let meal = Meal(happiness: 5, name: "Chocolate Cake")
print(meal.items)
