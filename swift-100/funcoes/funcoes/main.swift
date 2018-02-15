//
//  main.swift
//  funcoes
//
//  Created by LuizRamos on 07/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 Função - é um bloco de código self-container que é feito para fazer uma tarefa específica.

 Sintaxe:
 
 func nomeDaFuncao(bloco de parametros) -> retorno {
    bloco a ser executado
 }
 
 Obs: as funções precisam ser declaradas antes de serem chamadas.
 
 */

// **** Função sem parâmetro e sem retorno ****

func funcaoSemParametroESemRetorno() {
    print("função sem parâmetro e sem retorno")
}

funcaoSemParametroESemRetorno() //Chamada da função

// **** Função sem parâmetro com retorno ****

func funcaoSemParametroComRetorno() -> Float{
    
    return 3.14
}
let pi = funcaoSemParametroComRetorno() // Chamada da função
print(pi)


// **** Função sem parâmetro com retorno opcional ****
func funcaoSemParametroComRetornoOpcional() -> Float?{
    
    return 3.14
}

funcaoSemParametroComRetornoOpcional() // Chamada da função

// **** Função COM parâmetro e SEM retorno ****
/*
 
->Apenas nomenclatura interna dos parâmetros - optando por esta sintaxe a função é totalmente funcional, porém menos legível. Este padrão vem das funções das linguagens bases como por exemplo o ANSI-C
 
 sintaxe:
 
 func nomeDaFuncao (_ nomeInternoParametro1 : Tipo, _ nomeInternoParametro2 : Tipo){
 
    //bloco de execucao
 }
 
 -> nomeclatura interna e externa com um mesmo nome
 
 func nomeDaFuncao ( nomeInternoParametro1 : Tipo, nomeInternoParametro2 : Tipo){
 
 //bloco de execucao
 }
 
 -> nomeclatura externa com nome diferenciado
 
 func nomeDaFuncao (nomeExternoParametro1 nomeInternoParametro1 : Tipo, nomeExternoParametro2 nomeInternoParametro2 : Tipo){
 
 //bloco de execucao
 }
 
 
 */

func somarDoisNumerosSomenteNomeclaturaInterna(_ primeiroNumero : Float, _ segundoNumero : Float ){
    
    let resultado = primeiroNumero + segundoNumero
    print("o resultado é \(resultado)")
}

somarDoisNumerosSomenteNomeclaturaInterna(3.5,  35.1) //chamada da função

var meuArray = ["a", "b"]

meuArray.insert("c", at: 2)

func somarDoisNumerosSomenteNomeclaturaInternaExterna( primeiroNumero : Float,  segundoNumero : Float ){
    
    let resultado = primeiroNumero + segundoNumero
    print("o resultado é \(resultado)")
}

somarDoisNumerosSomenteNomeclaturaInternaExterna(primeiroNumero: 3.5, segundoNumero: 4.5) //chamada da função


func somar(_ numero1 : Float, com numero2: Float){
    
    let resultado = numero1 + numero2
    print(resultado)
}

somar(3.1, com: 5.2)

//comparativo
somarDoisNumerosSomenteNomeclaturaInterna(3.1, 2.1)
somarDoisNumerosSomenteNomeclaturaInternaExterna(primeiroNumero: 3.1, segundoNumero: 2.1)
somar(3.1, com: 2.1)

func potencia(numero : Int, elevado : Int) -> Int{
    var resultado : Int = numero
    
    for _ in 1..<elevado {
        resultado *= numero
    }
    return resultado
}

let n = potencia(numero: 2, elevado: 3)
print(n)

// ******** Função com parâmetros variados *******

func somador(_ numeros: Int...) -> Int{
    var soma = 0
    for numero in numeros {
        soma += numero
    }
    return soma
}

print(somador(2, 3, 5, 5))


// ****** Função com retorno multiplo ******
func funcaoComRetornoMultiplo (numero1 : Int, numero2 : Int) -> (resultadoSoma: Int, resultadoMultiplicacao: Int){
    
    let soma = numero1 + numero2
    let multiplicacao = numero1 * numero2
    
    return (soma, multiplicacao)
}

let retornoMultiplo = funcaoComRetornoMultiplo(numero1: 5, numero2: 10)

print("a soma do retorno é \(retornoMultiplo.resultadoSoma) e o produto é \(retornoMultiplo.resultadoMultiplicacao)") //chamada da funcao

// **** Conceito de early exit

func funcaoComEarlyExit(numero: Int){
    
    if(numero % 2 == 0){
        return
    }
    
    print("O numero era ímpar, por isto cheguei aqui")
}

// **** funcão com parâmetros opcionais e parâmetro padrao ****

func funcaoComParametroOpcional(_ parametro : String? = "valor default"){
    print(parametro)
}

funcaoComParametroOpcional() //chamada da função


