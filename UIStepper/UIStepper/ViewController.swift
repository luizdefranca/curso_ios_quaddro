//
//  ViewController.swift
//  UIStepper
//
//  Created by LuizRamos on 14/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*
 
     Um UIStepper fornece uma interface para aumentar ou diminuir um valor. O objeto conta com dois botões, um com um sinal de menos ( - ) e um com um sinal de mais ( + ).
     Podemos de nir o comportamento de um UIStepper para auto repetição (padrão), pressionando e segurando um de seus botões para variar o valor repetidamente. A taxa de variação depende de quanto tempo o usuário continua pressionando o controle, e os intervalos também são de nidos pelo programador.
     Os valores mínimo e máximo podem ser de nidos de acordo com a necessidade do objeto.
     
     
 
 */
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.stepper.stepValue = 0.67
    }

    
    @IBAction func alterarStepper(_ sender: UIStepper) {
       
        
        self.label.text = String(sender.value)
        
            print(sender.value)
        
    }
    

}

