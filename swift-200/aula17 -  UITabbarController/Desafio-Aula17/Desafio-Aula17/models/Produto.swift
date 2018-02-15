//
//  Produto.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 11/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

 class Produto{
    
    var nome: String
    var preco: Float
    var imagens: Array<UIImage>? 
    
    init(nome: String, preco: Float){
        self.nome = nome
        self.preco = preco
    }
}
