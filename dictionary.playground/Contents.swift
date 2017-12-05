/*
 Dictionary - assim como array pode organizar coleções de dados, porém a sua organização é feita através
 de um par de dados, o chamado "key: value". O par key:value liga uma chave associativa, permitindo assim uma distinção mais concisa dos elementos.
 
 */

//Declaração de um dicionário
//Dicionário vazio

// dicionarioVazio = [String : String]()
var dicionarioVazio2 = Dictionary<String,String>()
var dicionarioVazio3 : String, String = Dictionary<String,String>()


//Dicionario com conteudo inicial
//Tipagem explicita

var dicionarioComConteudoTipagemExplicita : Dictionary<String, Float> = ["calabresa": 61.00, "frango": 64.00,
                                                                         "portuguesa": 62.50]

var dicionarioComConteudoTipagemImplicita = ["pepperoni": 67.00]

var cardapioPizzariaSwift = ["calabresa": 61.00, "frango": 64.00,
                             "portuguesa": 62.50]

//Adicionando Conteudo
cardapioPizzariaSwift["starWars"] = 70.00
cardapioPizzariaSwift["stars"] = 59.00

print(cardapioPizzariaSwift)

//Substituir o conteudo
cardapioPizzariaSwift["calabresa"] = 62.50
print(cardapioPizzariaSwift)
cardapioPizzariaSwift.updateValue(75.00, forKey: "brasileira")
print(cardapioPizzariaSwift)

//Removendo itens
cardapioPizzariaSwift.removeValue(forKey: "stars")
print(cardapioPizzariaSwift)
cardapioPizzariaSwift["starWars"] = nil
print(cardapioPizzariaSwift)

var meuArrayDeDicionarios : [[String : Int]] = []
