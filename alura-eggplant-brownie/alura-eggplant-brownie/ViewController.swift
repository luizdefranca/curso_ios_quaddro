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
        let name : String = self.nameField.text!
        
        let happiness : Int = Int(self.nameField.text!)!
        print("Ok.. esta funcionando")
    }


}

