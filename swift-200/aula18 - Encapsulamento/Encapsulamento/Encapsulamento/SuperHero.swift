//
//  SuperHero.swift
//  Encapsulamento
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class SuperHero{
    var nome: String
    var sobrenome: String
    var idade: Int
    private var identidadeSecreta: String
    
    init(){
        self.nome = ""
        self.sobrenome = ""
        self.idade = 0
        self.identidadeSecreta = ""
    }
    
    func getIdentidadeSecreta(comCodigoSecreto codigo: String) -> String?{
        if codigo == "figuinhas" {
        return self.identidadeSecreta
        } else {
            return nil
        }
    }
    
    func setIdentidadeSecreta(comNomeSecreto identidade: String){
        self.identidadeSecreta = identidade
    }
}
