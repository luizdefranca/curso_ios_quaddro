//
//  ViewController.swift
//  Desafio-Aula16-versaoProfessor
//
//  Created by LuizRamos on 08/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//Global Variable

var controle = 0

class ViewController: UIViewController {
   
    //MARK: - IBOutlet
    
    @IBOutlet weak var persona1Button: UIButton!
    @IBOutlet weak var persona2Button: UIButton!
    @IBOutlet weak var persona3Button: UIButton!
    @IBOutlet weak var persona4Button: UIButton!
    @IBOutlet weak var persona5Button: UIButton!
    
    @IBOutlet weak var uniqueSlider: UISlider!
    //MARK: - Proprieties
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        liberaPersona(uniqueSlider)
    }
    
    
    //MARK: - Actions
    
    @IBAction func liberaPersona(_ sender: UISlider) {
//        if sender.value > 0.01 {
//            persona1Button.isHidden = false
//        } else {
//            persona1Button.isHidden = true
//        }
//
//        if sender.value > 0.2 {
//            persona2Button.isHidden = false
//        } else {
//            persona2Button.isHidden = true
//        }
//
//        if sender.value > 0.4 {
//            persona3Button.isHidden = false
//        } else {
//            persona3Button.isHidden = true
//        }
//
//        if sender.value > 0.6 {
//            persona4Button.isHidden = false
//
//        } else {
//            persona4Button.isHidden = true
//        }
//
//        if sender.value > 0.8 {
//            persona5Button.isHidden = false
//        } else {
//            persona5Button.isHidden = true
//        }
 
        self.persona1Button.isHidden = sender.value < 0.01
        self.persona2Button.isHidden = sender.value < 0.2
        self.persona3Button.isHidden = sender.value < 0.4
        self.persona4Button.isHidden = sender.value < 0.6
        self.persona5Button.isHidden = sender.value < 0.8
        
    }
    
    @IBAction func mostrarPersonagem(_ sender: UIButton) {
        
        print("tag", sender.tag)
        controle = sender.tag
        print("viewController", controle)
        self.performSegue(withIdentifier: "seguePictureScreen", sender: nil)
    }
    
    //MARK: - Methods

}

