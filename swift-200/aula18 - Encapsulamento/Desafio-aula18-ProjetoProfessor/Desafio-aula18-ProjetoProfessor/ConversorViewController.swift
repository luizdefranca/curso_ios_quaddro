//
//  ConversorViewController.swift
//  Desafio-aula18-ProjetoProfessor
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ConversorViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var labelReal: UILabel!
    @IBOutlet weak var labelDolar: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    //MARK: - Proprieties
    
    let cotacao : Float = 3.15
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelReal.text = "Real: R$ 0,00"
        self.labelDolar.text = "Dolar: U$ 0,00"
        self.slider.maximumValue = 1000.0
        self.slider.minimumValue = 0.0
    }
    
    //MARK: - Actions
    
    @IBAction func converter(_ sender: UISlider) {
        let real = converterDolarParaReal(valorDolar: self.slider.value)
        let dolar = self.slider.value
        self.labelDolar.text = "Dolar: U$ \(dolar)"
        self.labelReal.text = "Real: R$ \(real)"
    }
    
    //MARK: - Methods
    
    func converterDolarParaReal(valorDolar: Float) -> Float{
        return self.cotacao * valorDolar
    }
    
}
