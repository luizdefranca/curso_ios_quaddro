//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func swapValues<T>(_  a : inout T,_  b : inout T){
    let tempA = a
    a = b
    b = tempA
}

var a  = "casa"
var b = "vejo o mundo de avião"

swapValues(&a, &b)
print(a)
print(b)
var d = [Character]()
for i in a.split(separator: " "){
    d.append(i.first!)
}

print(d)

for l in b{
    print(l)
}

func main(){
    
}
