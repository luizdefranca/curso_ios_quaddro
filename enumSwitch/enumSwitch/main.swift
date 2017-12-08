
import Foundation

/*
 
 Enum Switch
 
 */

enum Naipes : String{
    
    case copas = "❤️"
    case espadas = "♠️"
    case ouros = "♦️"
    case paus = "♣️"
}

struct Carta{
    var simbolo : String
    var naipe : Naipes
}

var zap = Carta (simbolo: "K", naipe: .paus)

switch zap.naipe{
case .copas:
        print("Eh copas")
default:
    print("Pede 6!")
}
