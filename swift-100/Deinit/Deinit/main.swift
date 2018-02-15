//
//  main.swift
//  Deinit
//
//  Created by LuizRamos on 15/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

var cofrePorquinho : CofrePorquinho? = CofrePorquinho()

cofrePorquinho?.valorGuardado += 100.0
cofrePorquinho?.valorGuardado += 50.0
cofrePorquinho?.valorGuardado += 75.0

print(cofrePorquinho?.valorGuardado)
readLine()
cofrePorquinho = nil
print(cofrePorquinho?.valorGuardado)

print("==============   ARC ================")

var cofrePedrinho : CofrePorquinho? = CofrePorquinho()
cofrePedrinho?.valorGuardado += 20.0

var cofreJuquinha = cofrePedrinho
cofreJuquinha?.valorGuardado += 50
cofrePedrinho = nil
cofreJuquinha = nil

//Toda vez que se cria uma variável a referência é forte
//Enquanto uma referência forte ainda estiver na memória
//a variavel nao será desalocada

//Quando a referência é fraca ao ser desalocada a variável nao será desalocado
//o objeto da memória
//Quando a referencia é forte somente será desalocada a variável quando todas
//as refencias forem desalocada
