

var notasDeLuiz =   (matematica: 8.2, portugues: 9.1, historia: 8.4, ciencias: 8.1)
var notasDeAlvaro = (matematica: 8.1, portugues: 8.4, historia: 8.2, ciencias: 9.0)
var notasDeDebora = (matematica: 9.1, portugues: 8.4, historia: 8.1, ciencias: 8.2)
var notasDeRenato = (matematica: 8.2, portugues: 9.1, historia: 8.1, ciencias: 8.4)

var classe = ["luiz" : notasDeLuiz, "alvaro": notasDeAlvaro, "debora" : notasDeDebora, "renato": notasDeRenato]

var alunoSelecionado = "luiz"
print("As notas de \(alunoSelecionado) foram : \n")
print(classe[alunoSelecionado]!)
print("A média das notas foi:  \((classe[alunoSelecionado]!.matematica + classe[alunoSelecionado]!.portugues + classe[alunoSelecionado]!.historia + classe[alunoSelecionado]!.ciencias)/4)")
