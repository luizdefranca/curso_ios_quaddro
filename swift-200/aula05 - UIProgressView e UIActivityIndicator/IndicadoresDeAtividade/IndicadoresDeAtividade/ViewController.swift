//
//  ViewController.swift
//  IndicadoresDeAtividade
//
//  Created by LuizRamos on 22/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var meuActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var meuSwitch: UISwitch!
    
    @IBOutlet weak var meuProgressView: UIProgressView!
    
    @IBOutlet weak var meuStepper: UIStepper!
    
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Propriedade que define o valor do nosso progressView
        self.meuProgressView.progress = 0.0
    
       //Propriedade que define o nosso activityIndicator ficará escondido quando estiver parado
        self.meuActivityIndicator.hidesWhenStopped = true
        
        //Define a escala do stepper
        self.meuStepper.minimumValue = 0.0
        self.meuStepper.maximumValue = 10.0
        self.alterouSwitch(self.meuSwitch)
    }
    
    //MARK: - Actions
    
    @IBAction func alterouSwitch(_ sender: UISwitch) {
        
        //verificando o nosso switch
        if sender.isOn{
           //caso esteja ON
            self.meuActivityIndicator.startAnimating() //anima o activity indicator
        } else {
           //caso esteja OFF
            self.meuActivityIndicator.stopAnimating() //para a animacao do activity indicator
        }
    }
    
    @IBAction func alterouStepper(_ sender: UIStepper) {
        //self.meuProgressView.progress = Float(sender.value/10.0)
        
        let progress : Float = Float(sender.value/10.0)
            
        self.meuProgressView.setProgress(Float(progress), animated: true)
    }
    
    //MARK: - Methods

}

