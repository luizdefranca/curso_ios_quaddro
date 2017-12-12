//
//  ViewController.swift
//  desafio_slider-aula_07
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TODO
    
    //1 - A label deve sempre apresentar a soma dos valores dos dois Sliders.
    //2 - Ao apertar o botao os dois sliders devem resertar suas posições para o centro
    //3 - Ao mover o slider 1, outro deve mover na direção oposta
    
    //3.1 -
    
    
    @IBOutlet weak var sliderVerde: UISlider!
    
    
    @IBOutlet weak var sliderVermelho: UISlider!
    
    
    
    @IBOutlet weak var labelSomaSliders: UILabel!
    
    var textoLabel : String = "Somar valor Sliders: "
    
    var somaSliders : Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        somaSliders = self.sliderVerde.value + self.sliderVermelho.value
        self.labelSomaSliders.text = textoLabel + String(somaSliders)
    }

    
    @IBAction func somaValores(_ sender: UISlider) {
        somaSliders = self.sliderVerde.value + self.sliderVermelho.value
        
        self.labelSomaSliders.text = textoLabel + String(somaSliders)
    }
    
    @IBAction func resetarSliders(_ sender: UIButton) {
        
        
        self.sliderVermelho.value = 75
        self.sliderVerde.value = 75
        somaSliders = self.sliderVerde.value + self.sliderVermelho.value
        self.labelSomaSliders.text = textoLabel + String(somaSliders)
        
    }
    
    
    @IBAction func alterarSliderVermelho(_ sender: UISlider) {
        let diferenca : Float =  150 - self.sliderVerde.value
        
        self.sliderVermelho.value = diferenca
    }
    
    @IBAction func alterarSliderVerde(_ sender: UISlider) {
        let diferenca : Float =  150 - self.sliderVermelho.value
        
        self.sliderVerde.value = diferenca
    }
    
}

