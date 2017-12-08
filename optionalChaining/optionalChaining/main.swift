//
//  main.swift
//  optionalChaining
//
//  Created by LuizRamos on 08/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
    ****** Optinal Chaining *******
 
 */

struct Pessoa{
    
    var nome : String
    var rg : RG?
}

struct RG{
    var numero : Int
    var emissor : String
    var dataEmissao : String
    
    func trocarFoto(){
        print("Foto trocada com sucesso!")
    }
}

let pessoinha = Pessoa(nome: "Luiz", rg: nil)
print(pessoinha.rg?.numero)

let pessoinha2 = Pessoa(nome: "Luiz", rg: RG(numero: 76868768, emissor: "SDS", dataEmissao: "02/11/2016"))
print(pessoinha.rg?.numero)


struct Telefones{
    var residencial : String = "0000-0000"
    var celular: String = "99999-9999"
}

struct Cliente{
    var nome : String?
    var contatosTelefonicos : Telefones?
}

var clienteNovo = Cliente(nome: "Luiz", contatosTelefonicos: Telefones(residencial: "686868678", celular: "6786868"))
