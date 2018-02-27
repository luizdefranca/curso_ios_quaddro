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
    
    convenience init(nome: String, preco: Float, imagem: String){
        self.init(nome: nome, preco: preco)
        if let img = UIImage(named: "\(imagem).jpg"){
        self.imagens = []
        self.imagens?.append(img)
        }
    }
    
    convenience init(nome: String, preco: Float, imagems: [UIImage]){
        self.init(nome: nome, preco: preco)
        self.imagens = []
        self.imagens?.append(contentsOf: imagems)
    }
}
