//
//  ViewController.swift
//  UIView
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
         A classe UIView é a base para a maioria dos objetos gra'ficos presentes no framework UIKit. Por isso, a maioria dos recursos são compartilhados com os principais objetos, UILabel .. UIButton... UISwitch
         */
        
        //criando uma constantes para guardar a view
        let viewzinha = UIView(frame: CGRect(x: 30.0, y: 30.0, width: 300.0, height: 300.0))//OCRect - é um objeto que tem uma altura e uma largura
        /*
         Para que uma view possa ser renderizada é necessário adicioná-la em um objeto já existente, para isso utilizamos o método addSubView
        */
        
        self.view.addSubview(viewzinha)
        
        /*
         Para que possamos visualizar vamos alterar a propriedade background color
        */
        viewzinha.backgroundColor = UIColor.blue //é possível usar apenas o .blue porque o copilado espera um UIColor
        
        /*
         Superview - é a view que contém outros elementos em referencia a este
         Subview - é uma view que esta contida em outra, uma subview pode ter apenas uma superview
         
         */
        
        //--------------------------------------------------------
        
        //Tag é a propriedade utilizada para identificar uma view
        
        viewzinha.tag = 10
        
        //retornando as subview de um elemento
        print(self.view.subviews)
        
        //vendo o pai de uma view
        print(viewzinha.superview!)
        
        let viewzinha2 = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        viewzinha2.backgroundColor = .green
        
        self.view.addSubview(viewzinha2)
        
        viewzinha.addSubview(viewzinha2)
        
        //resgatar uma view pela tag
        print(self.view.viewWithTag(10)!)
        
        if let referenciaViewzinha = self.view.viewWithTag(20){
            referenciaViewzinha.backgroundColor = .orange
        }
        
    }


}

