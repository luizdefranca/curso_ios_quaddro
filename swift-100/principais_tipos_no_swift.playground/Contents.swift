//Principais tipos da linguagem swift
//Int, Float, Double, Character, String, Bool

//Deve-se dar preferência ao Float no lugar do Double

//Bool(Boleano)
//Armazena um valor true(verdadeiro) ou false(falso)

var meuBool : Bool = true
var meuBoolImplicito = false

//Int (inteiros - numero sem casas decimais)
//armazena valores inteiros positivos e negativos
//pode armazena de 8 a 64bit conforme o tipo definido seja
// Int, Int16, Int32 ou Int64

//Signed - um inteiro que permite sinal (valores negativos)
//Int8 == 8 bits = 2ˆ8 == 256

var saldoBancario : Int8 =  -20

//Unsigned - um inteiro que não permite valores negativos

var saldoBancarioSemprePositivo : UInt8 = 20 //neste caso não pode ser atribuído valor negativo

//como saber o número máximo permitido para um tipo de inteiro
print(UInt8.max)
print(UInt16.max)
print(UInt32.max)
print(UInt64.max)

//Float
//Números com casas decimais
//por padrão os numeros são declarados com (.)ponto no lugar de (,) vírgula

let pi: Float = 3.141592
let salarioDesejado : Float = 99999.0909

//Por padrão as contantes também são nomeadas em lower camel case, igualmente as variáveis

//Float Implícito

//Não há como criar um Float Implícito porque o swift sempre tentará utilizar o melhor tipo possível
// no caso para um numero com ponto fluante o Double

//Double
//Pontos flutuantes com mais precisão

let piDouble : Double = 3.14159265359

//Character
//Quarda um único caracter

var meuCharacter = "i"

//Aceita caracteres especiais

var meuCharacterEspecial = "í"

//Aceita unicode

var meuCharacterUnicode : Character = "\u{639}"
//String
//Guarda texto

var meuNome : String = "Luiz"
var meuSobrenome : String = "Ramos"


print(meuNome + "\t" + meuSobrenome)

