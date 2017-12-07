//
//  main.swift
//  desafio 01 - aula 04
//
//  Created by LuizRamos on 07/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

var valor : Double = 0
var escolha : Int = 0

func calcularRetornoBronzePrata(_ investimento : Double, _ linhaDeInvestimento : Int) {
    if(linhaDeInvestimento == 1){
        print("Você escolheu a opção Bronze, investiu \(investimento) e terá um retorno de \(investimento * 1.05)")
    }else{
        print("Você escolheu a opção Prata, investiu \(investimento) e terá um retorno de \(investimento * 1.10)")
    }
}

func calcularRetornoOuroDiamante(_ investimento : Double, _ linhaDeInvestimento : Int) {
    if(linhaDeInvestimento == 1){
        print("Você escolheu a opção Ouro, investiu \(investimento) e terá um retorno de \(investimento * 1.15)")
    }else{
        print("Você escolheu a opção Diamante, investiu \(investimento) e terá um retorno de \(investimento * 1.20)")
    }
}
print("Insira um valor que deseja investir: ")
valor = Double(readLine()!)!

if (valor < 10_000){
    print("""

Você tem direito a 2 linhas de investimentos:
- Linha Bronze com rendimento anual de 5% (Conservador)
- Linha Prata com redimento anual de 10%

Digite 1 para a linha Bronze e 2 para linha Prata:
""")
    escolha = Int(readLine()!)!
    calcularRetornoBronzePrata(valor, escolha)
    
} else {
    print("""

Você tem direito a 2 linhas de investimentos:
- Linha Ouro com rendimento anual de 15% (Conservador)
- Linha Diamante com redimento anual de 20%

Digite 1 para a linha Ouro e 2 para linha Diamante:
""")
    escolha = Int(readLine()!)!
     calcularRetornoOuroDiamante(valor, escolha)
}

