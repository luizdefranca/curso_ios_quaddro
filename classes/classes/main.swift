//
//  main.swift
//  classes
//
//  Created by LuizRamos on 08/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
     *****   Classes ****
 
 As classes podem ser entendidas como abstrações de objetos que possuem características semelhantes.
 Classes podem herdar métodos, propriedades e outras características de outra classe, este conceito é conhecido como herança. Vamos ver esse assunto mais adiante.
 A sintaxe para criação de uma classe é a seguinte:
 class NomeDaClasse : SuperClasseHerdada{
    // De nição da classe com propriedades e métodos
 }
 
 Quando instanciamos uma classe, estamos criando um objeto. Um objeto é capaz de armazenar estados através de suas propriedades e reagir a mensagens enviadas a ele, assim como se relacionar e enviar mensagens a outros objetos. Vamos ao exemplo:
 
 //Criando a classe
 class Cor { }
 
 //Utilizando a classe para de nir tipo do objeto
 let amarelo : Cor()
 let vermelho : Cor()
 let azul : Cor()
 
 */

class Pessoa{
    
    init (nome: String, sobrenome : String, idade: Int){
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
        self.nomeCompleto = nome + " " + sobrenome
    }
    
    //Declarando Propriedades
    var nome : String
    var sobrenome : String
    var idade : Int
    var nomeCompleto : String
    
    //Declarando Métodos
    func fala(frase: String){
        print("[\(nome)]:  ", frase )
        
    }
}

var pessoa = Pessoa(nome: "Luiz", sobrenome: "Ramos", idade: 46)
print(pessoa.nomeCompleto)

pessoa.fala(frase: "Whatsup")

print(pessoa)


