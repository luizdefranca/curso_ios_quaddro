//
//  ViewController.swift
//  SimulacaoEDebugging
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let valor = "Teste"
        
        var arrayNumerosEmStrings = ["um", "dois", "tres", "quatro", "cinco"]
        let numero = arrayNumerosEmStrings[2]
        print(numero)
        
        arrayNumerosEmStrings[2] = "trocado"
        print(arrayNumerosEmStrings[2])
    }



}

