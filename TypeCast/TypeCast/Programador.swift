//
//  Programador.swift
//  TypeCast
//
//  Created by LuizRamos on 14/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

class Programador : Funcionario{
    
    var linguagemPrincipal : String
    
    init(nome: String, funcional: Int, linguagemPrincipal: String){
        
        self.linguagemPrincipal = linguagemPrincipal
        super.init(nome, funcional)
    }
}
