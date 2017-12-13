//
//  ViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField : UITextField!
    @IBOutlet var happinessField : UITextField!
    
    @IBAction func add(){
        if nameField == nil || happinessField == nil {
            return
        }
        let name = nameField!.text!
        if let happiness = Int(happinessField!.text!) {
            let meal = Meal(happiness: happiness, name: name)
            print("Eaten \(meal.name) with happiness \(meal.happiness)")
        }
    }


}

