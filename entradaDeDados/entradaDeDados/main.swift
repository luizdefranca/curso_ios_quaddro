//
//  main.swift
//  entradaDeDados
//
//  Created by LuizRamos on 06/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

print("Insira o seu nome: ")
var nome = readLine()!

print("Insira a sua idade: ")

var idadeString = readLine()!
var idadeInteiro = Int(idadeString)!
print("olá \(nome), seja bem vindo ao curso de swift e parabéns pelos \(idadeInteiro)")
