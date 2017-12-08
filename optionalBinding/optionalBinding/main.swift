//
//  main.swift
//  optionalBinding
//
//  Created by LuizRamos on 08/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import Foundation

/*
 
 *** Optional Binding ***
 
 O Optional Binding fornece uma maneira alternativa para testar e desembrulhar um opcional em uma condição if. Com esse método podemos desembrulhar informações sem o uso do Forced Unwraping, e sem correr o risco de quebrar a aplicação.
 Vamos a sintaxe:
 if let nomeDaConstante = algumaOpicional { //Declarações realizadas se o valor for válido
 }else{
 //Declarações realizadas se o valor for nulo
 }
 Basicamente será feita uma veri cação entro do if/else, a vantagem em desembrulhar com esse método é a garantia de não ocorrer um erro fatal (crash): Os exemplos a seguir mostram o resultado:
 var nome: String? = “José”
 if let meuNome = nome{
 print(“Meu nome é \(meuNome)”)
 }else{
 print(“Valor nulo”)
 }
 var idade: Int? = nil
 if let minhaIdade = idade{
 print(“Minha idade é \(minhaIdade)”)
 }else{
 print(“Valor nulo”)
 }
 //Resultado: Valor nulo
 Observe que estamos usando uma constante que, em conjunto com o condicional if, veri ca se o valor é nulo e já desembrulha o opcional para utilizarmos dentro do bloco.
 Condicional de falha - guard
 A partir da versão 2.0, foi adicionado o condicional guard que também podemos chamar de condicional de falha, pois ele necessariamente deve sair do bloco que está sendo executado caso não consiga validar a condição.
 Este elemento é muito utilizado para tratarmos optionals sem termos que aninhar muitos if/else.
 No exemplo adiante, teremos uma função que recebe um valor opcional inteiro como parâmetro. Usaremos o guard para veri car se o valor recebido é um nulo:
 func areaQuadrado(valor: Int?){
    guard let numero = valor else {
    print(“Nenhum valor foi passado”)
    return
 }
 print(numero * numero) }
 areaQuadrado(valor: 10) areaQuadrado(valor: nil)
 //Resultado impresso em console conterá apenas a con rmação do valor nulo.
 Depois do bloco, que só ira acontecer caso o desempacotamento falhe, podemos trabalhar normalmente com a constante valor, que já recebe o parâmetro desempacotado.
 Se substituíssemos guard por if, mantendo esta estrutura, teríamos que escrever o restante do código dentro do bloco da condição.
 Se tivermos mais valores para tratar, teríamos que aninhar vários comandos if, deixando o nosso código mais complexo e consequentemente menos legível.
 
  O comando guard deve necessariamente interromper a execução de um determinado bloco de código com um return.
 
 */

let numeroDaCasaString = "555"
let numeroDaCasaInt = Int(numeroDaCasaString)

print(numeroDaCasaInt)

// *****************************
//Forced Unwrapping

var cpf : Int? = nil
print(cpf)


//************

if Int(numeroDaCasaString) == nil {
    print("Não consegui converter o numero da casa em Int")
}else {
    let numeroEmInt = Int(numeroDaCasaString)
}

/*
 ************ Optinal Binding ****************
*/

if let numeroCasaConvertido = Int(numeroDaCasaString){
    print("Numero convertido \(numeroCasaConvertido)")
} else {
    print(" Deu ruim a conversão")
}

var erro : String?
if let _ = erro{
    print("Requisição de erro")
} else {
    print("Funcionou tudo direitinho")
}

var erro2 : String? = "ERROR 404"
if let qualErro = erro{
    print("Está com erro \(qualErro)")
}else {
    print("Funcionou tudo direito")
}

/*
 
    ******* Nil Coalescing Operator (??) ********
 
 sintaxe:
 checagemDeValorOptional ?? valorDefault
 *************************************************
 O operador Nil Coalescing ou em Português operador de coalescência nula, é responsável por retornar o operando esquerdo caso ele não seja nulo, senão o operador irá retornar o operando direto. No exemplo abaixo iremos observar a sua utilização:
 var nome1: String? = nil
 var nome2: String? = “Dante Alighieri”
 var resultado = nome1 ?? nome2
 print(“Resultado: \(resultado!)”)
 //Impressão em console = Resultado: Dante Alighieri
 
 Neste exemplo podemos observar que o resultado retornado será Dante Alighieri, porém caso a variável nome1 não seja nula, o valor retornado será o próprio. Veja o exemplo abaixo:
 var nome1: String? = “William Shakespeare” var nome2: String? = “Dante Alighieri”
 var resultado = nome1 ?? nome2
 print(“Resultado: \(resultado!)”)
 //Impressão em console = Resultado: William Shakespeare
 Podemos dizer que o Nil Coalescing é uma espécie de operador ternário para os tipos opcionais, que fará a comparação dos valores, e nunca deixará o valor nulo aparecer.
 
 */


var numeroA : Int? = 2
var numeroB : Int = 10

let numeroC = numeroA ?? numeroB
let numeroD = numeroA ?? 0

print( "Numero C \(numeroC)" )


/*
 
    ***** Implicity UnWrapped Optinals *****
 
 São optionais de modo geral que podem conter um nil ou não. Contudo, quando você acessar estes valores o compilador
 irá desempacota-los. Isto permite você usar os valores diretamente mais é de uma forma não segura porque quando um optinal
 é desempacotado e não tem nenhum valor seu programa irá lancar uma exceção.
 
 Atenção: implicity unwrapped optinals permite você sempre pegar o valor sem precisar explicitamente desempacotar quando for
 usa-lo. E você pode esquecer que o valor pode ser nulo. Use esta opção com cuidado.
 */

var nome : String!  // -> ele pode ser optinal e sera sempre desempacotado
nome = nil

var nomeNaoOptional : String = nome
print("Unwrapped Optionals: ", nome)

//=========================
var nome2 : String? = "Esdras"
print("Unwrapping Optinals: ", nome2)
