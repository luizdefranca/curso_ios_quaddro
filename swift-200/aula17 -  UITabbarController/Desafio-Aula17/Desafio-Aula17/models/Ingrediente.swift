//
//  Ingrediente.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 11/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
class Ingrediente{
    var descricaoDoIngrediente : String
    var quantidade : Int
    
    init(_ descricaoDoIngrediente : String, _ quantidade: Int){
        self.descricaoDoIngrediente = descricaoDoIngrediente
        self.quantidade = quantidade
    }
}
