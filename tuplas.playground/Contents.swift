/*
 
 Tuplas - é um repositório que consegue agrupar múltiplos valores. Os valores contidos em uma tupla
 podem ter qualquer tiplagem, ou seja, o tipo de um elemento não necessarimente precisa ser o mesmo tipo
 do outro.
 
 
 */
//criando uma tupla

var tupla = (5, true, 3.14, "cachorro", [1,2,3,4,5])
print(tupla)


//decompondo uma tupla
var (inteiro, boleano, pi, animalzinho, arrayDeNumeros) = tupla

print(inteiro)
print(boleano)
print(pi)
print(animalzinho)
print(arrayDeNumeros)

//Decompondo valores específicos

var(_, _ , valorQueEuQuero, _, arrayInteiros) = tupla
print(valorQueEuQuero)
print(arrayDeNumeros)


//Acessando valores de forma independente
print(tupla.0)
print(tupla.1)
print(tupla.2)
print(tupla.3)
print(tupla.4)


//Nomeando valores da tupla

var pizza = (sabor: "bacon", valor: 49.00, calorias: 600, quantidadeFatias: 8, bordaRecheada: true)

print( "A pizza de \(pizza.sabor) custa R$\(pizza.valor) e tem \(pizza.calorias)")


//trocando valores na tupla

pizza.sabor = "bacon duplo"
print( "A pizza de \(pizza.sabor) custa R$\(pizza.valor) e tem \(pizza.calorias)")

pizza.0 = "calabreza"
print( "A pizza de \(pizza.sabor) custa R$\(pizza.valor) e tem \(pizza.calorias)")

