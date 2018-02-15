var idade = 18
var valorNoBolso = 800.00
switch(idade >= 18, valorNoBolso >= 800.00){
case (true, true):
    print("Ok, você pode tirar a carteira")
case(false, true):
    print("Você precisa esperar \(idade - 18) anos")
case(true, false):
    print("Você precisa juntar mais \(valorNoBolso - 800) reais")
default:
    print("Você precisa esperar \(idade - 18) anos e juntar mais \(valorNoBolso - 800) reais")
}

