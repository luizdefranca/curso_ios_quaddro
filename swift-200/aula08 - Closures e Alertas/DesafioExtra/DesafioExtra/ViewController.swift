//
//  ViewController.swift
//  DesafioExtra
//
//  Created by LuizRamos on 29/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: - IBOutlet
    
    @IBOutlet weak var textViewResult: UITextView!
    
    @IBOutlet weak var textFieldKick: UITextField!
    
    @IBOutlet weak var buttonSortear: UIButton!
    
    
    //MARK: - Proprieties
    var valorMaximo : Int = 0
    var sortedNumber : Int = 0
    var testativas : Int = 0
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearScreen()
        textFieldKick.delegate = self
   }
    
    //MARK: - Actions
    @IBAction func escolherDificuldade(_ sender: UISegmentedControl) {
        
        switch pegaDificuldade(for: sender) {
        case .easy:
            self.valorMaximo = 30
        case .medium:
            self.valorMaximo = 60
        default:
            self.valorMaximo = 100
            
        }
        
    }
    
    @IBAction func Sortear(_ sender: Any) {
        
            self.sortedNumber = Int( (arc4random_uniform(UInt32(self.valorMaximo)) + 1) )
            self.habilitaJogo()
            self.textFieldKick.resignFirstResponder()
        
    }
    
    
    //MARK: - Methods
    
    func pegaDificuldade (for segment : UISegmentedControl) -> Dificuldade{
        let choiced = segment.selectedSegmentIndex
        return Dificuldade(rawValue : choiced)!
    }
    func pegaMensagem(_ numeroDigitado : Int) -> String{
        
        if self.sortedNumber > numeroDigitado {
            return "\(numeroDigitado) é um bom palpite, mas tente chutar mais baixo!"
        } else if self.sortedNumber < numeroDigitado{
            return "\(numeroDigitado) é um bom palpite, mas tente chutar mais alto!"
        }
        
        return ""
    }
    
    func habilitaJogo(){
        self.buttonSortear.isEnabled = true
        self.textFieldKick.isEnabled = true
    }
    
    func clearScreen(){
        self.textViewResult.text = "Inicie o sorteio para dar um palpite!"
        self.buttonSortear.isEnabled = false
        self.textFieldKick.text = ""
        self.textFieldKick.isEnabled = false
    }
    //MARK: - Delegate Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let numeroDigitado = Int(textField.text!){
            let mensagem = pegaMensagem(numeroDigitado)
        }
        return true
    }
}

