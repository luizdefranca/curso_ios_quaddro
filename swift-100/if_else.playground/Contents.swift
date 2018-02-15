/*
 A estrutura if/else é uma estrutura de controle de fluxo, amplamente usada dentro da programação. ela consegue analisar expressões lógicas e desviar o fluxo de determinado processo.
 
 Sintaxe:
 
 if expressão lógica{
    sentença executada caso seja verdadeira a expressão
 } else {
    sentença executada caso a expressão seja falsa
 }
 
 Encadeamento de if else
 
 if 1ª expressão lógica {
    sentença executada caso seja a 1ª expressão verdadeira
 } else if 2ª expressão lógica {
    sentença executada caso seja a 2ª expressão verdadeira
 } else {
    sentença executada caso nem a 1ª expressão nem a 2ª expressão sejam verdadeiras
 }
 
 
 if sem o else
 
 if expressão lógica {
 
 }
 */

var corPreferida = "preta"

print("inicio do programa \n\n")

if corPreferida == "preta" {
 print("Vem pro time!!")
}
print("fim do programa \n\n")
    
    
//if else

if (corPreferida == "vermelho"){
    print("Bem vindo ao time vermelho!")
}else if (corPreferida == "azul"){
    print("Bem vindo ao time azul!")
}else if (corPreferida == "verde"){
    print("Bem vindo ao time verde!")
} else {
    print("Você nao pertence a nenhum time!")
}

//Operador NOT (!) é usado para negar uma condição, ou seja, inverter seu valor (true -> false, false -> true)

if !(corPreferida == "branco"){
    
    print("bem vindo ao grupo!")
}

//Operadores lógicos AND (&&) e OR (||) - são utilizados para adicionarmos condições lógicas para uma mesma expressão

var idade = 17
var temDinheiro = true

if( idade >= 18 && temDinheiro){
    print("pode ter carteira de motorista")
} else {
    print("você não pode ter carteira de motorista, volte daqui a \(18 - idade) anos")
    
}
