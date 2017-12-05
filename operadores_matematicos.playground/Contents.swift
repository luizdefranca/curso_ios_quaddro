/*
 operadores matemáticos
 */

var numero1 = 10
var numero2 = 5

//Adicao

var soma = numero1 + numero2
print(soma)

//Subtracao

var diferenca = numero1 - numero2
print(diferenca)

//Multiplicacao

var produto = numero1 * numero2
print(produto)

//Divisão

var quociente = numero1 / numero2
print(quociente)

//MOD

var mod = numero1 % 7
print(mod)

//Divisão de pizza

var quantidadeDePessoas = 7
var quantidadeDePizzas = 5
var quantidadeFatias = quantidadeDePizzas * 8
var quantidadeDeFatiasPorPessoa = quantidadeFatias/quantidadeDePessoas
var quantidadeDeFatiasQueSobram = quantidadeFatias % quantidadeDePessoas

print("Quantidade de fatias por pessoas: \(quantidadeDeFatiasPorPessoa)")
print("Quantidades de fatias que \"sobram\ \(quantidadeDeFatiasQueSobram)")

