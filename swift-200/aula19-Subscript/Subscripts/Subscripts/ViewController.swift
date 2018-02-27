//
//  ViewController.swift
//  Subscripts
//
//  Created by LuizRamos on 15/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        var arrayzinho = ["valor1", "valor2", "valor3"]
        arrayzinho.append("valor4")
        
        print(arrayzinho[0])
        
        var pessoa = Pessoa()
        pessoa.nome = "Dexter"
        pessoa.idade = 25
        
        var arrayHobbies = ["afiar facas", "desossar carcaças", "fazer bolo"]
    
        pessoa.defineHobbiesScreto(hobbies: arrayHobbies)
        print("\(pessoa[0])")
    }

   

}

