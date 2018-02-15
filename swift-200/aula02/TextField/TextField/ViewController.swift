//
//  ViewController.swift
//  TextField
//
//  Created by LuizRamos on 16/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - Propriedades
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var textFieldUnica: UITextField!
    @IBOutlet weak var labelTexto: UILabel!
    
    
    // MARK: - View Lif Cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Propriedade que deixa um texto modelo em nossa TextField
        self.textFieldUnica.placeholder = "Digite algo aqui"
        
        //Propriedade que altera a cor de fundo
        
        self.textFieldUnica.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        self.textFieldUnica.becomeFirstResponder()
        
        //não pode deixar de atribuir o delegate para o 
        self.textFieldUnica.delegate = self
    }


    // MARK: - Métodos
    
    // MARK: - Action

    @IBAction func atualizar(_ sender: UIButton) {
        
        self.labelTexto.text = self.textFieldUnica.text
        self.textFieldUnica.resignFirstResponder()
    }
    
    // MARK: - Métodos do UITextFieldDelegate
    
    //Método disparado quando uma textField tem a edicao iniciada
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    //Método disparado quando uma textField tem a edicao finalizada
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    
    //Método que é disparado quando o usuario faz uma alteracao no texto da TextField
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn", string)
        if(self.textFieldUnica.text!.count > 0){
            //TODO:
            
        }else {
            
        }
        return true
    }
    
    //Método que é disparado quando o usuário clica no return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
}

