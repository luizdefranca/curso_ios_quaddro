//
//  ViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewControllerAddMeal: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = "Teste"
        return cell
    }
    

    @IBOutlet var nameField : UITextField!
    @IBOutlet var happinessField : UITextField!
    
    
    var delegate : ViewControllerAddMealDelegate?
    
    @IBAction func add(){
        if nameField == nil || happinessField == nil {
            return
        }
        let name = nameField!.text!
        if let happiness = Int(happinessField!.text!) {
            let meal = Meal(happiness: happiness, name: name)
            print("Eaten \(meal.name) with happiness \(meal.happiness)")
            
            if let mealsTable = delegate{
                mealsTable.add(meal)
                
            }
            
            if let navigation = self.navigationController {
                navigation.popViewController(animated: true)
            }
        }
    }


}

