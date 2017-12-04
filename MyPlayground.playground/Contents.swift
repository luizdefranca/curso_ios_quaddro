//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//variável - pode ter seu valor alterado durante a aplicação

var minhaVariavel :Int = 15
print (minhaVariavel)

minhaVariavel = 25
print(minhaVariavel)

//constanstes - pode ter um valor atribuído apenas uma vez

let minhaConstante : Int = 100

//as constantes nao podem ser alteradas
//minhaConstante = 20
print(minhaConstante)


//Tipagem implícitas para constantes
let minhaConstanteImplicita = 30

/*
 Regras de nomeclaturas para variáveis e constantes
 
 1 - não podemos comecar o nome de uma variável ou constante com números
 2 - não é possível conter espaços em brancos no nome de variáveis ou constantes
 3 - símbolos matemáticos e alguns desenhos não são aceitos
 4 - proibido o uso de palavras reservadas como nome de variáveis ou constantes
 */

// Particularidades do swift


//Podemos utilizar caracteres unicode na criação de variáveis

var profissão : String = "Instrutor IOS"

//Podemos utilizar emojis
var 🤡 : String = "palhaço"

print(🤡)

//Isto foi idelizado para que todo mundo pudesse programar em sua língua materna

//Para variáveis e constantes é utilizado o padrão Lower Camel Case

