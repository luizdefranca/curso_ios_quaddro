/*
 
 Switch - o switch é uma estrutura de decisão  que analisa caso a caso, é uma ótima opção quando se tem
 diversos estados potenciais para uma verificação
 
 sintaxe:
 
 switch valorASerConsiderado{
 
 case valor1:
    executa caso seja igual ao valor1
 case valor2:
    executa caso seja igual ao valor2
 case valor3:
    executa caso seja igual ao valor3
 case valor4:
    executa caso seja igual ao valor4
 default:
    caso não seja nenhum dos valores anteriores
 }
 */

var consideracao = 10

switch consideracao {
case 0:
    print("Consideracao é 0")
case 5:
    print("Consideracao é 5")
case 10:
    print("Consideracao é 10")
default:
    print("Consideracao é desconhecido")
}

var letra = "a"
switch letra {
case  "a":
    print("A letra \(letra) é vogal")
case "e":
    print("A letra \(letra) é vogal")
case "i":
    print("A letra \(letra) é vogal")
case "o":
    print("A letra \(letra) é vogal")
case "u":
    print("A letra \(letra) é vogal")
default:
    print("A letra \(letra) não é vogal")
}

//Consideração de múltiplos argumentos

switch letra {
case "a", "e", "i", "o", "u":
    print("A letra \(letra) é vogal")
default:
    print("A letra \(letra) não é vogal")
}

//Fallthrough
//A keyword fallthrough permite que o fluxo do swift continue sendo executado após primeira condição ser chamada


var nivelHierarquico = 4

switch nivelHierarquico {
case 5:
    print("Abrir o cofre")
    fallthrough
case 4:
    print("Usar heliporto")
     fallthrough
case 3:
    print("Usar transporte coorporativo")

case 2:
    print("Usar máquina de café")
     fallthrough
case 1:
    print("Bater o ponto")
     fallthrough


default:
    print("ter uma foto no crachá")
}
