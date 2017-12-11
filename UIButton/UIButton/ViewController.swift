//
//  ViewController.swift
//  UIButton
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //criando um botão
        let botazinho = UIButton(type: .system)
        
        
        //setando o frame
        botazinho.frame = CGRect(x: 60, y: 30, width: 200, height: 60)
        
        //adicionando a superview
        self.view.addSubview(botazinho)
        
        //mudando o titulo
        botazinho.setTitle("Meu Botão", for: .normal)
        
        //mudando o background
        botazinho.backgroundColor = .gray
    }


}

