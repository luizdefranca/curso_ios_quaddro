//
//  main.swift
//  JoaoEOApartamento
//
//  Created by LuizRamos on 15/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

var joao = Pessoa()

var apartamento4A = Apartamento()

joao.apartamento = apartamento4A

print(joao.apartamento?.unidade)

apartamento4A.morador = joao
