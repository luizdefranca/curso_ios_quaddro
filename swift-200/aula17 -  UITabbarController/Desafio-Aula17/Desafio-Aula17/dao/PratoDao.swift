//
//  PratoDao.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 16/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
class PratoDao {
    
    var pratos: Array<Prato> = [
        Prato(nome: "Feijoada", preco: 60.0, imagem: "Feijoada"),
        Prato(nome: "Feijão Tropeiro", preco: 45.00, imagem: "Feijão Tropeiro" ),
        Prato(nome: "Ovo Frito", preco: 25.0, imagem: "Ovo Frito"),
        Prato(nome: "Frago a passarinho", preco: 40.00),
        Prato(nome: "Bife com Fritas", preco: 35.0, imagem: "Bife com Fritas")
    ]
    
   
    func listarPratos() -> [Prato]{
        return self.pratos
    }
    
    func adicionaPrato(prato: Prato) {
        self.pratos.append(prato)
    }
    
    func deletaPrato(prato: Prato) {
        let index = encontraIndex(doPrato: prato)
        if  index == -1
        {
           return
        } else {
            self.pratos.remove(at: index)
        }
    }
    
    
    func encontraIndex(doPrato prato: Prato) -> Int{
        var index : Int = -1
        for i in 0..<self.pratos.count {
            if self.pratos[i].nome == prato.nome{
                index = i
            } 
        }
        
        return index
    }
    
}
