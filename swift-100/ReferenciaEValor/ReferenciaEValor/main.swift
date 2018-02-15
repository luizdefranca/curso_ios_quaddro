//
//  main.swift
//  ReferenciaEValor
//
//  Created by LuizRamos on 15/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

//Passagem por valor

var meuCofreSecreto = CofreSecreto("1234")

var cofreSecretoDoJoao = meuCofreSecreto

print("Meu cofre: ", meuCofreSecreto)
print("Cofre Joao: ", cofreSecretoDoJoao)
meuCofreSecreto.valorGuardado = 1000.0


print("----------------------------")
print("Meu cofre: ", meuCofreSecreto)
print("Cofre Joao: ", cofreSecretoDoJoao)
