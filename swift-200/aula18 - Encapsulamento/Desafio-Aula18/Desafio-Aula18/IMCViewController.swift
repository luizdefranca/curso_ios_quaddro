//
//  IMCViewController.swift
//  Desafio-Aula18
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class IMCViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var alturaLabel: UILabel!
    
    @IBOutlet weak var imcLabel: UILabel!
    
    @IBOutlet weak var pesoSlider: UISlider!
    
    @IBOutlet weak var alturaSlider: UISlider!
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction func mudarPeso(_ sender: UISlider) {
        let peso = sender.value
        let altura = alturaSlider.value
        alteraIMC(peso: peso, altura: altura)
    }
    
    @IBAction func mudarAltura(_ sender: UISlider) {
        let peso = pesoSlider.value
        let altura = sender.value
         alteraIMC(peso: peso, altura: altura)
    }
    
    //MARK: - Methods
    
    func alteraIMC(peso: Float, altura: Float){
        if altura != 0 {
        let imc = peso/(altura * altura)
            let imcString = formataDuasCasasDecimais(number: imc)
        self.imcLabel.text = "IMC - \(imcString)"
        } else {
          self.imcLabel.text = "IMC - 0.00"
        }
    }
}
