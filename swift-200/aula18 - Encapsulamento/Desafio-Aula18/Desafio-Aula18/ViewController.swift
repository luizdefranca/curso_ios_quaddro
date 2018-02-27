//
//  ViewController.swift
//  Desafio-Aula18
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var realLabel: UILabel!
    
    @IBOutlet weak var dolarLabel: UILabel!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
    
    

    @IBAction func converter(_ sender: UISlider) {
        let valorEmDolar = sender.value
        let valorEmDolarString = formataDuasCasasDecimais(number: valorEmDolar)
        let valorEmReal = valorEmDolar * 3.5
        let valorEmRealString = formataDuasCasasDecimais(number: valorEmReal)
        self.dolarLabel.text = "Dolar: U$ \(valorEmDolarString)"
        self.realLabel.text = "Real: R$ \(valorEmRealString)"
        
    }
    
    
}

public func formataDuasCasasDecimais(number: Float) -> String{
    return  String(format: "%.2f", number)
}
