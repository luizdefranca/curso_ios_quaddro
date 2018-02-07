//
//  Pessoa.swift
//  ProjetoClientes
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class Pessoa{
    
    var nome : String
    var sobrenome : String
    
    init(nome: String, sobrenome: String){
        self.nome = nome
        self.sobrenome = sobrenome
    }
    
    init(){
        self.nome = ""
        self.sobrenome = ""
    }
}
