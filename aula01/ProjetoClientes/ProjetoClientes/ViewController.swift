//
//  ViewController.swift
//  ProjetoClientes
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cliente1 = Cliente(nome: "Garibaldo", sobrenome: "Lilico")
        print(cliente1.idCliente)
        
        let cliente2 = Cliente(nome: "Lilica", sobrenome: "Garibaldina")
        print(cliente2.idCliente)
        
        let cliente3 = Cliente(nome: "Florisvaldo", sobrenome: "Flores")
        print(cliente3.idCliente)
        
        let cliente4 = Cliente(nome: "Astroncio", sobrenome: "Astro")
        print(cliente4.idCliente)
        
        
        let funcionario1 = Funcionario(nome: "Marcos", sobrenome: "Lopes", cargo: "Astronauta")
        print(funcionario1.nome, funcionario1.sobrenome, funcionario1.cargo)
        let funcionario2 = Funcionario(nome: "Lucia", sobrenome: "Lopes", cargo: "Diretora")
          print(funcionario2.nome, funcionario2.sobrenome, funcionario2.cargo)
        
        
    }

    
}

