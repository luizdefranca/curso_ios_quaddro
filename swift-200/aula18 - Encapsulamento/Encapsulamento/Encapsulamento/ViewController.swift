//
//  ViewController.swift
//  Encapsulamento
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pessoaComum = SuperHero()
        pessoaComum.nome = "Bruce"
        pessoaComum.sobrenome = "Wayne"
        pessoaComum.idade = 28
        pessoaComum.setIdentidadeSecreta(comNomeSecreto: "Batman")
        
        let ident = pessoaComum.getIdentidadeSecreta(comCodigoSecreto: "Shazam")
        print(ident)
       
    }

    

}

