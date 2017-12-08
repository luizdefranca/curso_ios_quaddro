/*
 
 Strings
    São sequências de caracteres (texto)
 
 Caracteres especiais
 \n -> line feed ou nova linha
 \t -> tabulação horizontal
 \\ -> usado para imprimir uma barra invertida
 \r -> carriage return ou posiciona o curso no início da corrente linha
 \" -> usado para inserir aspas duplas
 \' -> usado para inserir aspas simples
 \0 -> caracter Null
 \u{n} -> usado para inserir um caracter Unicode
 */

var minhaStringVazia = ""
var minhaStringVazia2 = String()


//As strings nao aceita null ou nil

//Strings multáveis
minhaStringVazia = "deixou de ser vazia"
print(minhaStringVazia)

//Concatenação de strings
//juntar dois valores ou mais de strings

var stringVar = "Quaddro"
var stringCompleta = stringVar + " Treinamentos"
print(stringCompleta)

//Interpolação de String
//incluir um dado dentro de outra string

var idade: Int = 46
var nome: String = "Luiz"

var saudacao = "Olá, meu nome é \(nome) e tenho \(idade) anos."

print(saudacao)

var stringMultiLine = """
Esta é minha string multiline
Ela permite que eu faça uma string com multiplas linhas
e mantem a formatação
"""

print(stringMultiLine)



//Deixando um texto em minúsculo

print(saudacao.lowercased())

//Deixando um texto em Maiúsculo

print(saudacao.uppercased())

//
