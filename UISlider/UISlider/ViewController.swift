//
//  ViewController.swift
//  UISlider
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit
/*
 
 o ViewController é uma classe responsável por uma tela.
 
 */


class ViewController: UIViewController {

    
    @IBOutlet weak var meuSlider: UISlider!
    
    @IBOutlet weak var meuSlider2: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let valorSlider = self.meuSlider.value
        print("Valor slide: ", valorSlider)
        
        //TODO
        
        //Definir minimum value para -10
        self.meuSlider2.minimumValue = -10
        
        //Definir maximum value para 1000
        self.meuSlider2.maximumValue = 1000
        
        //Definir value para 20
        self.meuSlider2.value = 20
        
        //Definir cor minimum track para purple
        self.meuSlider2.minimumTrackTintColor = UIColor.purple
        
        //Definir cor maximum track para blue
        self.meuSlider2.maximumTrackTintColor = UIColor.blue
        
        //Definir cor do thumber como yellow
        self.meuSlider2.thumbTintColor = UIColor.yellow
        
        let valorSlider2 = self.meuSlider2.value
        
        print("Valor slide: ", valorSlider2)
        
    }
    
    
    @IBAction func actionSlider1(_ sender: UISlider) {
        
        
            
        print("valor mudou ", sender.value, sender.tag)
        
    }
    
    
    @IBAction func alterarSlider2(_ sender: UISlider) {
        
        self.meuSlider2.value += 1
    }
    

}

