//
//  Cliente.swift
//  ProjetoClientes
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

var idClienteGlobalAtual = 0

class Cliente: Pessoa {
//    var idCliente : Int {
//        return idClienteGlobalAtual
//    }
    
    var idCliente : Int = idClienteGlobalAtual
    
    override init(){
        
        idClienteGlobalAtual += 1
//        self.idCliente = idClienteGlobalAtual
        super.init()
    }
    
    override init(nome: String, sobrenome: String) {
        
        idClienteGlobalAtual += 1
//        self.idCliente = idClienteGlobalAtual
        super.init(nome: nome, sobrenome: sobrenome)
    }
    
}
