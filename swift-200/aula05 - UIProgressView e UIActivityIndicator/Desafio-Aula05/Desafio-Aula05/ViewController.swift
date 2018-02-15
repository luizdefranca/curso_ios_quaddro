//
//  ViewController.swift
//  Desafio-Aula05
//
//  Created by LuizRamos on 22/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var viewDesafio: UIView!
    
    @IBOutlet weak var viewConfiguracoes: UIView!
    
    @IBOutlet weak var viewContador: UIView!
   
    @IBOutlet weak var viewStepper: UIView!
    
    @IBOutlet weak var labelContador: UILabel!
    
    @IBOutlet weak var meuProgress: UIProgressView!
    
    @IBOutlet weak var meuSlider: UISlider!
    
    @IBOutlet weak var meuStepper: UIStepper!
    
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelContador.text = "0"
        self.meuSlider.maximumValue = 0
        self.meuSlider.maximumValue = 10
        self.meuStepper.minimumValue = 1.0
        self.meuStepper.maximumValue = 1000.0
        
        
    }
    
    //MARK: - Actions
    
    @IBAction func habilitarConfiguracoes(_ sender: UISwitch) {
        self.meuSlider.isEnabled = false
        self.meuStepper.isEnabled = false
        
    }
    
    @IBAction func InverterCores(_ sender: UISwitch) {
        if sender.isOn{
            self.viewDesafio.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.viewConfiguracoes.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            self.viewContador.backgroundColor = UIColor.white
            self.viewStepper.backgroundColor = UIColor.black
        } else {
            self.viewDesafio.backgroundColor = UIColor.black
            self.viewConfiguracoes.backgroundColor = UIColor.white
            self.viewContador.backgroundColor = UIColor.black
            self.viewStepper.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func mudarProgress(_ sender: UISlider) {
        self.meuProgress.progress = sender.value
        
    }
    
    @IBAction func mudarContador(_ sender: UIStepper) {
        
        self.labelContador.text = "\(sender.value)"
    }
    
    
    //MARK: - Metods


}

