//
//  Dao.swift
//  eggplant-brownie
//
//  Created by LuizRamos on 17/01/18.
//  Copyright © 2018 Alura. All rights reserved.
//

import Foundation

class Dao{
    
    let mealsArchive : String = {
        return Dao().getArchive(for: "Meals")
    }()
    
    let itemArchive : String = {
        return Dao().getArchive(for: "Items")
    }()
    
    
    func saveMeals(_ meals: [Meal]){
         NSKeyedArchiver.archiveRootObject(meals, toFile: mealsArchive)
    }
    
    func loadMeals() -> [Meal]{
        if let loaded = NSKeyedUnarchiver.unarchiveObject(withFile: mealsArchive) {
            let meals = loaded as! [Meal]
            return meals
        } else {
            return []
        }
    }
    
    func getArchive(for resource: String) -> String{
        let userDirs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let dir = userDirs[0]
        
        if(resource == "Meals"){
            let archive = "\(dir)/eggplant-browie-meals.dados"
            return archive
        }else {
            let archive = "\(dir)/eggplant-browie-items.dados"
            return archive
        }
   }
    
    func loadItems() -> [Item]{
        
        if let loaded = NSKeyedUnarchiver.unarchiveObject(withFile: itemArchive){
            let items = loaded as! [Item]
            return items
        } else {
            return []
        }
    }
    
    func saveItems(items: [Item]){
        NSKeyedArchiver.archiveRootObject(items, toFile: itemArchive)
    }
}
