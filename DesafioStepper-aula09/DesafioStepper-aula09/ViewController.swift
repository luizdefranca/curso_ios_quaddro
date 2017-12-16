//
//  ViewController.swift
//  DesafioStepper-aula09
//
//  Created by LuizRamos on 14/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var notSquare: UIView!
    
    @IBOutlet weak var yesSquare: UIView!
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.stepValue = 1
        
    }

   
    @IBAction func verificarSeNumeroEhPrimo(_ sender: UIStepper) {
        
        let numero : Int = Int(sender.value)
        
        self.counterLabel.text = String(numero)
        
        if ehPrimo(numero){
            self.yesSquare.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            self.notSquare.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            self.notSquare.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            self.yesSquare.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
    

    func ehPrimo(_ number: Int) -> Bool{
        
        if(number == 1 || number == 2 || number == 3){
            return true
        }
        for n in 2...number/2 {
            print(number % n, number)
            if number % n == 0{
                
                return false
            }
        }
        
        return true
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        self.notSquare.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.yesSquare.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.counterLabel.text = "1 <-> 100"
        self.stepper.value = 0
    }
    
}

