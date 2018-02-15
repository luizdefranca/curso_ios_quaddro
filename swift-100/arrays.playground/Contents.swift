/*
 
 Arrays - pode organizar diversos valores em uma coleção,
 são úteis para organizar elementos normalmente com características semelhantes.
 
 Os elementos da coleção organizadas por meio de índices numéricos,
 o índice é iniciado com "0" zero e acrescido em 1 de acordo com a quantidade de elementos.
 
 
 */

//Declarando um Array

var arrayVazio = [String]()
var arrayVazio2 : Array<String> = []
var arrayVazio3 : [String] = []
var arrayVazio4 : [String] = Array<String>()


//Inicializando o Array com conteúdo

var arrayComConteudoInicialTipagemExplicita : [String] = ["valor1", "valor2", "valor3"]

//Adicionando valores com a função append

arrayComConteudoInicialTipagemExplicita.append("valor4")

//Adicionando valores sem a função append

arrayComConteudoInicialTipagemExplicita += ["valor5"]

//Adição de elemento em um índice específico
var cestaDeFrutas = ["🍓", "🍌", "🍇", "🍅", "🍊","🍑"]

cestaDeFrutas.insert("🍍", at: 2)
cestaDeFrutas.insert("🥑", at: 0)

print(cestaDeFrutas)

//remoção de item

//removendo o último item
cestaDeFrutas.removeLast()
print(cestaDeFrutas)

//removendo um item específico

cestaDeFrutas.remove(at: 5)
cestaDeFrutas.remove(at: 2)
print(cestaDeFrutas)

//recuperar Itens
//recuperando o último item
print(cestaDeFrutas.last)

//recuperando o primeiro item
print(cestaDeFrutas.first)

//recuperando em índice específico
print(cestaDeFrutas[3])


//Substituindo um item específico
cestaDeFrutas[0] = "🌰"
//Removendo todos os itens

//Removendo todos os itens de um array
cestaDeFrutas.removeAll()
print(cestaDeFrutas.last)

//Pegar o tamanho de um array
print(cestaDeFrutas.count)


