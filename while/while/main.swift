//
//  main.swift
//  while
//
//  Created by LuizRamos on 06/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 while
 
 sintaxe
 
 while (condição){
    bloco executado
 }
 
 
 */

//condicao de repeticao controlada

var contagem = 0
while( contagem <= 5){
    print("While numero \(contagem)")
    contagem += 1
}

//condicao com quantidade loops não controlada
var carros = ["Golf", "Uno", "BMW", "Ferrari Enzo", "Soul"]
var variavelDeControle = 0
var carroSelecionado = carros[variavelDeControle]


while (carroSelecionado != "Ferrari Enzo"){
    print(carroSelecionado," é o carro selecionado" )
    
    variavelDeControle += 1
    carroSelecionado = carros[variavelDeControle]
}
