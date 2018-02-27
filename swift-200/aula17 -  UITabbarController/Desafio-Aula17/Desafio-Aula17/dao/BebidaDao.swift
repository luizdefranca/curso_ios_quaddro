//
//  BebidaDao.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 16/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

class BebidaDao {
    var bebidas: Array<Bebida> = [
        Bebida(nome: "Refrigerante litro", preco: 12.0, imagem: "Refrigerante litro"),
        Bebida(nome: "Refrigerante lata", preco: 6.0, imagem: "Refrigerante lata"),
        Bebida(nome: "Suco natural copo", preco: 8.0, imagem: "Suco natural copo"),
        Bebida(nome: "Suco natural jarra", preco: 17.0),
        Bebida(nome: "Cerveja itaipava", preco: 10.0, imagem: "Cerveja itaipava"),
        Bebida(nome: "Cachaça", preco: 5.0)
    ]
   
    
  func listarBebidas() -> [Bebida]{
        return bebidas
    }
    
    func adicionaBebida(bebida: Bebida) {
        self.bebidas.append(bebida)
    }
    
    func deletaBebida(bebida: Bebida) {
        let index = encontraIndex(daBebida: bebida)
        if  index == -1
        {
            return
        } else {
            self.bebidas.remove(at: index)
        }
    }
    
    
    func encontraIndex(daBebida bebida: Bebida) -> Int{
        var index : Int = -1
        for i in 0..<self.bebidas.count {
            if self.bebidas[i].nome == bebida.nome{
                index = i
            }
        }
        
        return index
    }
}
