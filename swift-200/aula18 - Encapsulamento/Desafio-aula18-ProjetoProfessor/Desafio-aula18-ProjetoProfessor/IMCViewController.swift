//
//  IMCViewController.swift
//  Desafio-aula18-ProjetoProfessor
//
//  Created by LuizRamos on 14/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class IMCViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var labelAltura: UILabel!
    @IBOutlet weak var labelIMC: UILabel!
    
    @IBOutlet weak var sliderPeso: UISlider!
    @IBOutlet weak var sliderAltura: UISlider!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    @IBAction func alterouPeso(_ sender: UISlider) {
        let peso = self.sliderPeso.value
        let altura = self.sliderAltura.value
        let imc = self.calculaIMC(altura: altura, peso: peso)
        self.labelIMC.text = "IMC - \(imc)"
        self.labelPeso.text = "\(peso)"
        self.labelAltura.text = "\(altura)"
    }
    
       //MARK: - Methods
    
    func calculaIMC(altura: Float, peso: Float) -> Float{
        let imc = peso/(altura * altura)
        return imc
        
    }
}
