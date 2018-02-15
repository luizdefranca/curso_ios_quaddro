//
//  ViewController.swift
//  Desafio-Timer-aula11
//
//  Created by LuizRamos on 11/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    //MARK: - Proprieties
  
    var contador = 0
    var temporizador : Timer!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myDatePicker.date = Date(timeIntervalSince1970: 0.0)
        self.stopButton.isHidden = true
    }
    
    //MARK: - Actions
    
    @IBAction func iniciar(_ sender: UIButton) {
        self.contador = Int(self.myDatePicker.countDownDuration)
        self.temporizador = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.criarContagem), userInfo: nil, repeats: true)
        self.startButton.isHidden = true
    }
    
    @IBAction func parar(_ sender: UIButton) {
        self.temporizador.invalidate()
        self.contador = 0
        self.startButton.isHidden = false
        self.stopButton.isHidden = true
        self.myLabel.text = ""
    }
    //MARK: - Methods

    @objc func criarContagem(){
        self.contador -= 1
        self.myLabel.text = "\(contador)"
        if(self.contador == 0){
            self.temporizador.invalidate()
            self.startButton.isHidden = false
        }
    }

    
    
}

