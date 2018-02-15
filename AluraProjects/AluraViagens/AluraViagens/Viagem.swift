//
//  Viagem.swift
//  AluraViagens
//
//  Created by LuizRamos on 11/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class Viagem {
    
    let titulo : String
    let quantidadeDeDias : Int
    let preco: Float
    let imagem: String
    
    init(titulo: String, quantidadeDeDias: Int, preco: Float, imagem: String){
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.imagem = imagem
        
    }
}
