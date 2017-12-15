//
//  MealsTableViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController, ViewControllerAddMealDelegate {
    
    var meals = [Meal(happiness: 3, name: "Mocotó"),
                 Meal(happiness: 5, name: "Bolo de Chocolate")]
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addMealSegue"){
            let viewAddMeal: ViewControllerAddMeal = segue.destination as! ViewControllerAddMeal
            viewAddMeal.delegate = self
        }
        
        
    }
    
  
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        return cell
    }
    
    func add(_ meal: Meal){
        meals.append(meal)
        tableView.reloadData()
    }
}
