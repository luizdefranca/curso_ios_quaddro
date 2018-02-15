//
//  CofreSecreto.swift
//  ReferenciaEValor
//
//  Created by LuizRamos on 15/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

//Struct tem passagem por valor

struct CofreSecreto{
    
    let senha: String
    var valorGuardado : Double = 0.0
    init (_ senha : String){
        self.senha = senha
         
    }
    
}
