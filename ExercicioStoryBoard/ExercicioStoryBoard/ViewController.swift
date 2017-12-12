//
//  ViewController.swift
//  ExercicioStoryBoard
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var contador = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func adicionaQuadrado(_ sender: UIButton){
        
        let myView = UIView(frame: CGRect(x: 0, y: contador, width: 50, height: 50))
        myView.backgroundColor = .yellow
        self.contador +=  100
        
        
        self.view.addSubview(myView)
    }

}

