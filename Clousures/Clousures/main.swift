//
//  main.swift
//  Clousures
//
//  Created by LuizRamos on 15/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 Em swift podemos utilizar funções que solicitam outras funções como parâmetros, como por exemplo, o array sort.
 
*/

//criando um array de inteiros nao ordenados
var arrayInteirosp = [9,5,2,7,1,8,0]

//ordenando usando uma funcao

func ordenarArrayInteiros (_ valor1: Int, _ valor2: Int) -> Bool{

    return valor2 > valor1
}


var novaArray = arrayInteirosp.sorted(by: ordenarArrayInteiros)
print("--- Funcao ----- ")
print(novaArray)


/*
 
 Ordenacao usando Closure
 
 {(parametros) -> tipo de retorno in
 
 Comandos a serem utilizados
 
 }
 
 */

var ordenacaoClosures = arrayInteirosp.sorted { (valor1: Int, valor2: Int) -> Bool in
    return valor1 > valor2
}

//Inferencia de tipo e retorno por contexto
var ordenacaoClosureComInferenciaDeTipoPorContexto = arrayInteirosp.sorted {(valor1, valor2)  in
return valor1 > valor2
}

//Utilizando shorthands em argumentos

var ordenacaoClosureUtilizandoShorthand = arrayInteirosp.sorted(by: {$0 > $1})
print(ordenacaoClosureUtilizandoShorthand )
//Inferencia Total
var ordenacaoClosureInferenciaTotal = arrayInteirosp.sorted(by: > )
print(ordenacaoClosureInferenciaTotal)

