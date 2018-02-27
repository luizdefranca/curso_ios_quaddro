//
//  Sobremesa.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 16/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class SobremesaDao{
    
    var sobremesas: Array<Sobremesa> = [
        Sobremesa(nome: "Pave de chocolate", preco: 12.0, imagem: "Pave de chocolate"),
        Sobremesa(nome: "Torta Alemã", preco: 12.0, imagem: "Torta Alemã"),
        Sobremesa(nome: "Pudim de doce de leite", preco: 8.0, imagem: "Pudim de doce de leite"),
        Sobremesa(nome: "Doce de coco com mamão", preco: 8.0, imagem: "Doce de coco com mamão"),
        Sobremesa(nome: "Petit Gateu", preco: 12.0, imagem: "Petit Gateu")
    ]
   
    
  func listarSobremesas() -> [Sobremesa]{
        return sobremesas
    }
    
    func adicionaSobremesa(sobremesa: Sobremesa) {
        self.sobremesas.append(sobremesa)
    }
    
    func deletaSobremesa(sobremesa: Sobremesa) {
        let index = encontraIndex(daSobremesa: sobremesa)
        if  index == -1
        {
            return
        } else {
            self.sobremesas.remove(at: index)
        }
    }
    
    
    func encontraIndex(daSobremesa sobremesa: Sobremesa) -> Int{
        var index : Int = -1
        for i in 0..<self.sobremesas.count {
            if self.sobremesas[i].nome == sobremesa.nome{
                index = i
            }
        }
        
        return index
    }
}
