
import Foundation

/*
 
        *** Enums ***
 
 A palavra reservada enum é utilizada quando pensamos em um número  nito de possibilidades. Estas possibilidades podem ser padronizadas se forem do mesmo tipo e seu conteúdo não for modi cado, adicionado ou retirado.
 A tipagem da enumeração é obrigatória quando houver inserção e recuperação de valores, mas pode ser omitida caso a necessidade seja apenas utilizar um caso como referência.
 Dentro de cada case, teremos um dos elementos do nossa enumeração. Veja a sintaxe:
 enum NomeDaEnumeracao : TipoSeForUtilizar {
 case nomeDoElemento = valorDoElemento
 case nomeDoElemento = valorDoElemento
 case nomeDoElemento = valorDoElemento
 }
 
 
 */

enum PontosCardeais {
    
    case norte
    case sul
    case leste
    case oeste
}

print(PontosCardeais.norte)

enum Nota: Int {
    case semNota = 0
    case pessimo = 2
    case regular = 4
    case bom = 6
    case muitoBom = 8
    case top = 10
}

struct Aluno {
    
    var nome : String
    var curso : String
    var notaFinal : Nota
}

var aluno01 = Aluno(nome: "Luiz", curso: "Swift", notaFinal: .bom)
var aluno02 = Aluno(nome: "Joaozinho", curso: "Java", notaFinal: Nota.muitoBom)
var aluno03 = Aluno(nome: "Pedrinho", curso: "Python", notaFinal: Nota(rawValue: 2)!) //como ele não tem garantia que será um rawValue ele cria um optional

print(aluno01)
print("hashValue", aluno01.notaFinal.hashValue) //hashValue -> o index do elemento conforme a inserção
print("rawValue", aluno01.notaFinal.rawValue)   //rawValue -> o valor relacionado no enum
