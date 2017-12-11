//
//  main.swift
//  observes _willSetdidSet
//
//  Created by LuizRamos on 08/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

class Carro {
    
    var modelo : String{
        willSet(novoValor){
            readLine()
            print("willSet")
            print("alterando o valor ")
        }
        
        didSet{
            readLine()
            print("didSet")
            print("valor antigo \(oldValue)")
        }
    }
    init(modelo : String){
        self.modelo = modelo
    }
}

var carro = Carro(modelo: "kkkk")
carro.modelo = "TTTT"
