//
//  main.swift
//  for
//
//  Created by LuizRamos on 06/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 *** Forma antiga do for ***
 for(variavel inicial; condicao de parada; incremento){
 bloco a ser executado
 }
 
 *** Forma atual do for ***
 
 for controle in 0...5{
 bloco a ser executado
 }
 */

//For in
//For com intervalo fechado, ou seja, utiliza do intervalor entre o primeiro e o último numero e inclui o último número

for controle in 0...5{
    print("loop numero \(controle)")
}

//For com intervalo semi-fechado, utiliza o intervalo entre o primeiro e o último número, porém não inclui o último número

for controle in 0..<5{
    print("loop numero \(controle)")
}

//For in, dentro de um array

var fruteira = ["🍑", "🍊", "🥑", "🍍", "🍇"]

for fruta in fruteira{
    print("Fruta do dia: \(fruta)")
}
