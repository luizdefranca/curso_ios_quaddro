//
//  main.swift
//  operadores_customizados
//
//  Created by LuizRamos on 07/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

/*
 
 ******* Operadores Customizados *****
 
 Existem três tipos de operadores
 
 prefixo - são exemplos o "o operador de negação " -> ! e o "operador de negativação"  -> -
 
 infixo
 
 posfixo
 
 */

//Declaração operador custom prefix

prefix operator *-
prefix func *- (numero : Int) -> Int
{
    return numero * 5
}

var valor = 10

print(*-valor)


//Declaracao operador custom postfix

postfix operator <<<
postfix func <<< (texto : String ) -> String{
    return texto.uppercased()
}

print("Luiz Ramos"<<<)

//Declaracao operador custom infix
infix operator <->
func <->(n1: Int, n2: Int) -> Int{
    return (n1 * n2) + 5
}

print(1<->7)
