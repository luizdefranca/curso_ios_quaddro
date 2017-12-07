//
//  main.swift
//  desafio_calculadora
//
//  Created by LuizRamos on 06/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

var resposta : String = "n"
var primeiroNumero : Double = 0.00
var segundoNumero : Double = 0.00
var operacaoMatematica : Int = 0
var valoresDeOperacao = [1, 2, 3, 4]
repeat{
    print("""
-------------- Seja Bem Vindo ao Swift Calculator ---------------

Insira o primeiro número que será utilizado na operação:
    
""")
    primeiroNumero = Double(readLine()!)!
    print()
    
    while(true){
        print("""

    Qual operação você deseja realizar?

    Soma: 1
    Subtração: 2
    Multiplicação: 3
    Divisão: 4

    Insira a opção referente a operação:
    """)
     operacaoMatematica = Int(readLine()!)!
        print(operacaoMatematica)
        
        if ( !valoresDeOperacao.contains(operacaoMatematica)){
        
            print(
            """
            Opção inválida - Favor insira a operação que você deseja realizar:
            Soma: 1
            Subtração: 2
            Multiplicação: 3
            Divisão: 4
            """)
        } else {
            break
        }
    
    }
    
    print("Insira o segundo número que será utilizado na operação: ")
    segundoNumero = Double(readLine()!)!
    switch operacaoMatematica{
    case 1:
        print("O resultado da operação é \(primeiroNumero + segundoNumero)")
    case 2:
        print("O resultado da operação é \(primeiroNumero - segundoNumero)")
    case 3:
        print("O resultado da operação é \(primeiroNumero * segundoNumero)")
    default :
        print("O resultado da operação é \(primeiroNumero / segundoNumero)")
    }
    
    
    print("gostaria de usar novamente a calculadora? responda \"sim\ se quiser.")
    resposta = readLine()!
}while(resposta == "s" || resposta == "sim")
