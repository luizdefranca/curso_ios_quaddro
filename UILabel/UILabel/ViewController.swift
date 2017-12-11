//
//  ViewController.swift
//  UILabel
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         O UILabel é responsável por exibir texto que não são editáveis
         em uma ou multiplas linha, que nos ajuda a identificar partes da interface do usuário
         
         Esse tipo de objeto é altamente configurável e podemos editar a cor do texto, o tipo de fonte...
         entre outras propriedades
         
        */
        
        //Criando um UILabel
        
        let labelzinha : UILabel = UILabel(frame: CGRect(x: 60, y: 60, width: 200, height: 40))
        //trocando a cor de background
        labelzinha.backgroundColor = .yellow
        
        //adicionando à superview
        self.view.addSubview(labelzinha)
        
        labelzinha.text = "Eu sou uma labelzinha"
        labelzinha.textColor = .red
        labelzinha.textAlignment = .center
        labelzinha.adjustsFontSizeToFitWidth = true
        
        //numero de linhas
        labelzinha.numberOfLines = 4
        
    }

    //bound e frame
    
    
    

}

