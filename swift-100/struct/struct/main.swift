//
//  main.swift
//  struct
//
//  Created by LuizRamos on 07/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 Structs são parecidos com as classe e são usadas para criar tipos simples agrupados.
 Em Swift, classes e estruturas são extremamente semelhantes e possuem sintaxes bem parecidas entre si.
 A diferença  fica por conta da utilização da palavra reservada struct ao invés de class na sua declaração.
 As diferenças entre as duas na prática, é que as structs são normalmente utilizadas para operações mais simples, que não demandam desalocação de informações em memória.
 Structs não possuem características como herança, por exemplo. Suas instâncias são sempre passadas por valor, diferentemente de classes, onde são passadas por referências.
 Vamos a sintaxe:
 struct NomeDaEstrutura {
 // Definição da estrutura com propriedades e métodos
 }
 
 
 */

struct Pessoa{
    
    var nome: String
    var idade: Int? //para deixar a idade opcional:  1. deve-se usar um optional
    
    func andar(){
        print("Andando...")
    }
    
    func falar(){
        print("Olá, me chamo \(self.nome)!")
    }
    
    init(nome : String) { //2. criar um novo construtor com apenas um parametro
        self.nome = nome
    }
    
    init(nome : String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
}

var pessoinha = Pessoa(nome: "Luiz", idade: 46)
pessoinha.andar()
pessoinha.falar()

print("\(pessoinha.nome) tem \(pessoinha.idade)")


var outraPessoinha = Pessoa(nome: "Joaozinho", idade: 12)
outraPessoinha.falar()
print(outraPessoinha.idade)




