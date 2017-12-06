/*
 
 Optionais - sao variáveis que potencioalmente podem conter o valor nulo, sao particulamente úteis
 para receber resultados de expressoes com esta possibilidade.
 
 
 */

//Variável comum

var variavelComum : Int = 10

print(variavelComum)

//Variável optinal

var variavelOptional : Int? = 50
print(variavelOptional)


//Atribuíndo valores comuns para uma optinal

var variavelComum2 : Int = 30
var variavelOptinal2 : Int? = variavelComum2

print(variavelComum2)
print(variavelOptinal2)

//Atribuindo uma variável optinal para uma variável comum

var variavelOptinal3 : Int? = 42
var variavelComum3 : Int = variavelOptinal3!

print(variavelOptinal3)
print(variavelComum3)


var dicionario = ["calabreza" : 60.00]

print(dicionario["calabreza"])

var resultado = variavelComum + variavelOptional!
