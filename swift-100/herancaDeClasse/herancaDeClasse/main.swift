//
//  main.swift
//  herancaDeClasse
//
//  Created by LuizRamos on 08/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation
/*
 
    ***** Herança *****
 
 
 A capacidade de uma classe de captar as propriedades e métodos de outra classe é chamada de herança. Essa é uma das ferramentas mais poderosas da orientação a objetos, pois através dela podemos criar hierarquias e aumentamos o nível de abstração.
 A herança nos fornece muitas possibilidades durante o desenvolvimento através da transferência de propriedades e métodos da classe pai para suas subclasses.
 As classes pai, que são utilizadas na criação de novas classes são chamadas de superclass, ao passo que as classes que estão herdando as características das superclasses são chamadas de subclasses.
 Vamos fazer a releitura da sintaxe de classes para entendermos como a implementação de heranças funciona:
 
 class SubClass : SuperClassHerdada{
 // Definição da classe
 }
 Observe a utilização dos pois pontos ( : ) para a declaração, seguido do nome da superclasse.
 
 */

class Pessoa {
    
    //Declarando propriedades
    var nome : String
    var idade : Int
    
    //Inicializando
    init(nome : String, idade : Int) {
        self.nome = nome
        self.idade = idade
        
    }
    
    func fala(frase : String){
        print(frase)
    }
    
    final func andar(){ // a palavra final nao permite sobrescrita
        print("estou andando")
    }
    
}

class Aluno : Pessoa{
    var curso : String
    init(curso : String, nome: String, idade: Int){
        self.curso = curso
        super.init(nome: nome, idade: idade)
    }
    
}

class AlunoProgramacao : Aluno{
    var linguagensAprendidasNoCurso : [String]
    init(linguagens: [String], curso: String, nome: String, idade: Int){
        self.linguagensAprendidasNoCurso = linguagens
        super.init(curso: curso, nome: nome, idade: idade)
    }
}

class Instrutor : Pessoa{
    var materias : [String]
    init(materias : [String], nome: String, idade: Int){
        self.materias = materias
        super.init(nome: nome, idade: idade)
    }
    
    override func fala(frase: String){
        print("Falaaa galerinha! ")
    }
}

class Escola{
    var instrutores : [Instrutor] = []
    var alunos : [Aluno] = []
}

var pessoa01 : Pessoa = Pessoa(nome: "Pedrinho", idade: 22)
var aluno01 : Aluno = Aluno(curso: "Swift", nome: "Jose", idade: 25)
var instrutor01 : Instrutor = Instrutor(materias: ["Java", "Python"], nome: "Mauricio", idade: 30)

var pessoaDaEscola = [pessoa01, aluno01, instrutor01]
print(pessoaDaEscola)

print("=======================")
for p in pessoaDaEscola{
    print(p.nome)
}

