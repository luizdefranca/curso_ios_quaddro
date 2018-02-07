//
//  ViewController.swift
//  desafio-aula03
//
//  Created by LuizRamos on 17/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
      primeiroTextField.delegate = self
    }

    @IBOutlet weak var primeiroTextField: UITextField!
    
    @IBOutlet weak var segundoTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let texto = primeiroTextField!.text {
            self.segundoTextField.text = texto
            self.label.text = "Parabéns \(texto). Desafio concluído"
        }
        return true
    }
}

