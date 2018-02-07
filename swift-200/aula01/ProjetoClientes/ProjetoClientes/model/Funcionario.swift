//
//  Funcionario.swift
//  ProjetoClientes
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class Funcionario: Pessoa {
    
    var cargo : String
    
    override init() {
        super.init()
        self.cargo = ""
    }
    
    override init(nome: String, sobrenome: String, cargo: String) {
        super.init(nome: nome, sobrenome: sobrenome)
        self.cargo = cargo
    }
}
