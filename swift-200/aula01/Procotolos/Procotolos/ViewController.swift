//
//  ViewController.swift
//  Procotolos
//
//  Created by LuizRamos on 15/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//criando um protocolo

protocol MeuProcolo  {
    
    //propriedade do protocolo
    var propriedadeRequiredGet : Int{get}
    var propriedadeRequiredGetSet : Int{get set}
    
    //Método do protocolo
    func metodoDoProcolo()
}

class MinhaClasse: MeuProcolo{
    
    var propriedadeRequiredGet: Int{
        return 10
    }
    
    var propriedadeRequiredGetSet: Int
    
    func metodoDoProcolo() {
        print("Método do protocolo acionado")
    }
    
    init(){
        propriedadeRequiredGetSet = 10
    }
    
    
}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let obj = MinhaClasse()
//        obj.propriedadeRequiredGet = 30
        obj.propriedadeRequiredGetSet = 30
        
        
    }



}

