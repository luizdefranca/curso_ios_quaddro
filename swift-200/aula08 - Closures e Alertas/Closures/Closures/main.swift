//
//  main.swift
//  Closures
//
//  Created by LuizRamos on 28/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//


/*
 Closures
 
 Em swift podemos utilizar funções que utilizam outras funcoes como parametro, como por exemplo o método sorted de um array
 
 Closures são ferramentas para a criação de funções in-line. Com elas podemos criar blocos de códigos que podem atuar como variáveis ou funções.
 Elas são muito similares aos blocos em Objective-C ou, fazendo uma analogia com outras linguagens, podemos compará-las com callbacks e lambdas.
 Como fazemos com funções e métodos, as closures podem receber parâmetros (argumentos) e também podem possuir um retorno de dados, de qualquer tipo:
 Observe a sintaxe de uma Closure:
 {(parametros) -> tipoDeRetorno in //Declarações
 }
 Vamos ver como acontece a declaração padrão, sem closure:
 // Declaração da função
 func saudacaoMatinal() { print(“Bom Dia”)
 }
 
 //Exibir o resultado  nal
 saudacaoMatinal()
 Vamos ao mesmo exemplo em uma closure:
 //Declaração da variável, junto com a função
 var saudacaoNoturna = {() -> Void in print(“Boa Noite”)}
 //Exibição do resultado
 saudacaoNoturna()
 Observe que obtivemos resultados idênticos, porém reduzindo a quantidade de códigos.
 
 Dica:
  Lembre-se Void é um tipo, entao mesmo que closure nao retorne nada você pode utilizar o tipo Void
 Podemos indicar um tipo de retorno para uma closure, Vamos a alguns exemplos:
 //Closure para somar +1 a um número indicado:
 var maisUm = {(a: Int) -> Int in let soma = a + 1
 return soma }print(maisUm(10))
 //Resultado: 11
 //Closure para multiplicar dois números:
 var multiplicar = {(a: Int, b: Int) -> Int in
 return a * b print(multiplicar(5,5))
 //Resultado: 25
 //Closure para repetir mensagens por quantidade de vezes:
 var repetirMsg = {(mensagem: String, repetir: Int) in for _ in 1...repetir{
 print(mensagem)
 }
 }
 repetirMsg(“Olá“, 5) //Resultado: Olá
 Olá
 Olá
 Olá
 Olá
 
 Utilizando Closure como parâmetro de uma função
 Podemos passar uma closure como um parâmetro de um função. Em assuntos que serão abordados mais adiante, nos depararemos com muitos casos onde uma closure é um dos elementos que compõem um método.
 //Closure como parâmetro de um método:
 func minhaClosure(umaClosure: () -> Void) { } umaClosure()
 //Exemplo de utilização em um método inicializador:
 let acaoOK = UIAlertAction(title: “OK”, style: .default, handler: ((UIAlertAction) -> Void)?)
 //Nesse caso a closure pode ser utilizada pra complementar a acão a ser disparada com o método.
 
 
 
 */

import Foundation

/*
 uso comum de funções
 */
func retornaValor() -> Int{
    return 10
}

print(retornaValor())

func somaComQuize(_ valor: Int) -> Void{
    print(valor + 15)
}
somaComQuize(retornaValor())

//Criando um array de inteiros nao ordenados

var arrayInteiros = [9,5,3,8,1,10]

//Ordenação usando uma função

//Criando uma funcao para a ordenação
func ordenaArrayInteiros(_ valor1 : Int, _ valor2 : Int) -> Bool{
    return valor1 < valor2
}

var arrayOrdenado = arrayInteiros.sorted(by: ordenaArrayInteiros)
print(arrayOrdenado)

//================================================

/*
 Sintaxe de uma closure
 
 {(parametros) -> retorno in
    Comandos para ser executados
 }
 
 
 
 */
var ordenacaoComClosure = arrayInteiros.sorted{ (valor1 : Int, valor2: Int) in
    return valor1 < valor2
}
print("ordenacaoComClosure", ordenacaoComClosure)

// Ordenação de array de objetos

class Pessoa {
    var nome : String
    var idade : Int
    init(_ nome: String,_ idade: Int){
        self.nome = nome
        self.idade = idade
    }
}

var arrayPessoa :  [Pessoa] = [Pessoa("Luiz", 45), Pessoa("Jose", 20), Pessoa("Pedro", 34), Pessoa("Maria", 22)]

var arrayPessoaOrdenadaIdade = arrayPessoa.sorted{ (pessoa1 : Pessoa, pessoa2 : Pessoa) -> Bool in
    return pessoa1.idade < pessoa2.idade
}
for pessoa in arrayPessoaOrdenadaIdade{
    print(pessoa.nome)
}


/*
 INFERENCIA DE TIPO E RETORNO POR CONTEXTO
 */

var ordenacaoArrayPessoaClosureComInferenciaDeTipoERetornoPorContexto = arrayPessoa.sorted{ (pessoa1, pessoa2) in
    return pessoa1.idade < pessoa2.idade
}
print("--------------- ordenacaoClosureComInferenciaDeTipoERetornoPorContexto ----")
for pessoa in ordenacaoArrayPessoaClosureComInferenciaDeTipoERetornoPorContexto
{
    print(pessoa.nome)
}

/*
 INFERENCIA POR SORTHANDS EM ARGUMENTOS
 */

var ordenacaoClosureUtilizandoShortHands = arrayPessoa.sorted{ $0.idade < $1.idade}
print("--------------- ordenacaoClosureUtilizandoShortHands ----")
for pessoa in ordenacaoArrayPessoaClosureComInferenciaDeTipoERetornoPorContexto
{
    print(pessoa.nome)
}

/*
 INFERENCIA TOTAL NA CLOSURE
 */
var ordenacaolClosureInferenciaTotal = arrayInteiros.sorted(by: <)
print("--------------- ordenacaolClosureInferenciaTotal ----")
print(ordenacaolClosureInferenciaTotal)

/*
 Função que recebe outra função como parametro
 
 */

func funcaoComFuncaoParametro( closure: (String, String) -> Bool) -> Double{
    
    let test = closure("primeiraString" , "segundaString")
    if test {
        return 0
    }
    return 1
}


