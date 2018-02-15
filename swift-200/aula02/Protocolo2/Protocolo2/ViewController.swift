//
//  ViewController.swift
//  Protocolo2
//
//  Created by LuizRamos on 16/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

protocol Produto {
    var preco: Float {get set}
    var quantidade: Int { get set}
    var nome: String {get set}
    var descricaoProduto : String {get set}
    
}


class Joia{
    var cor : String = ""
}

class Bijuteria : Joia, Produto {
    var preco: Float = 0.00
    var quantidade: Int = 0
    var nome: String = ""
    var descricaoProduto: String = ""
    var tipo : String = ""
    
}

class Alimento{
    var valorNutricional : Int = 0
}

class Chocolate: Alimento, Produto {
    var sabor : String = ""
    var preco: Float = 0.00
    var quantidade: Int = 5
    var nome: String = ""
    var descricaoProduto: String = ""
    var tipo : String = ""
}

class GuardaChuva: Produto{
    var cor: String = ""
    var preco: Float = 0.00
    var quantidade: Int = 0
    var nome: String = ""
    var descricaoProduto: String = ""
    var tipo : String = ""
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Cria um objeto GuardaChuva
        let guardaChuva = GuardaChuva()
        
        //Adiciona os atributos
        guardaChuva.nome = "Chaplin"
        guardaChuva.descricaoProduto = "Um guarda chuva preto"
        guardaChuva.cor = "preto"
        guardaChuva.quantidade = 10
        guardaChuva.preco = 15.0
        guardaChuva.tipo = "retro"
        
        //Cria um objeto Chocolate
        let chockito = Chocolate()
        
        //Adiciona os atributos
        chockito.nome = "Chockito 100g"
        chockito.descricaoProduto = "Barra de chocolate de 100g"
        chockito.preco = 7.0
        chockito.quantidade = 20
        chockito.sabor = "chocolate com flocos"
        chockito.tipo = "barra"
        chockito.valorNutricional = 100
        
        //cria um objeto Bijuteria
        let minhaBiju = Bijuteria()
        minhaBiju.nome = "Colar de pérolas chinesa"
        minhaBiju.descricaoProduto = "Um colar de pérolas"
        minhaBiju.quantidade = 30
        minhaBiju.preco = 10.0
        minhaBiju.tipo = "Colar"
        minhaBiju.cor = "Branco"
        
        //cria um array para guardar todos os produtos
        let todosProdutos : [Produto] = [guardaChuva, chockito, minhaBiju]
    }

}

