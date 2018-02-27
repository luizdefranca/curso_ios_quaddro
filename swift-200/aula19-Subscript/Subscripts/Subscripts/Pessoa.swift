//
//  Pessoa.swift
//  Subscripts
//
//  Created by LuizRamos on 15/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class Pessoa{
    
    var nome: String = ""
    var idade: Int = 0
    private var hobbiesSecretos: [String] = []
    
    func defineHobbiesScreto(hobbies : [String]){
        self.hobbiesSecretos = hobbies
    }
    
    func retornaHobbieSecretos(index: Int) -> String {
        return self.hobbiesSecretos[index]
    }
    
    subscript(index: Int) -> String{
        get{
            return self.hobbiesSecretos[index]
        }
        
        set(novoValor){
//            self.hobbiesSecretos[index] = novoValor
             self.hobbiesSecretos += [novoValor]
        }
    }
}
