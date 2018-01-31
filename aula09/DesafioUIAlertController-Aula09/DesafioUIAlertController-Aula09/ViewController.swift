//
//  ViewController.swift
//  DesafioUIAlertController-Aula09
//
//  Created by LuizRamos on 30/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var textFieldLogin: UITextField!
    
    @IBOutlet weak var textFieldSenha: UITextField!
    
    @IBOutlet weak var buttonCadastrar: UIButton!
    
    @IBOutlet weak var buttonAcessar: UIButton!
    
    @IBOutlet weak var buttonAcaoDestrutiva: UIButton!
    
    
    //MARK: - Proprieties
    var senha : String = ""
    var login : String = ""
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideButton(for: self.buttonAcaoDestrutiva)
        
    }
    
    //MARK: - Actions
    
    @IBAction func cadastrar(_ sender: UIButton) {
        if isFormCorrectFill(){
            self.login = self.textFieldLogin.text!
            self.senha = self.textFieldSenha.text!
            self.showAlertMessage(title: "Sucesso", message: "Login cadastrado com sucesso!")
            self.hideButton(for: self.buttonCadastrar)
            self.textFieldLogin.isHidden = true
            self.textFieldSenha.isHidden = true
        } else {
            self.showAlertMessage(title: "Alerta", message: "Preencha corretamente os campos para completar o seu cadastro.")
        }
        
    }
    
    
    @IBAction func acessar(_ sender: UIButton) {
        if self.thereIsAValidLogin(){
           self.showAlertLogin(title: "Alerta", message: "Efetue seu Login")
        }else {
            self.showAlertMessage(title: "Alerta", message: "Faça o cadastro antes de prosseguir")
            
        }
    }
    
    @IBAction func acaoDestrutiva(_ sender: UIButton) {
        self.showActionSheet(title: "Alerta!", message: "Você realmente deseja realizar esta ação?")
    }
    
    
    //MARK: - Methods
    
    func hideButton(for button : UIButton){
        button.isEnabled = false
        button.isHidden = true
    }
    
    func showButton(for button : UIButton){
        if !button.isEnabled {
            button.isEnabled = true
        }
        if button.isHidden {
            button.isHidden = false
        }
    }
    
    func isFormCorrectFill() -> Bool{
        if let login = self.textFieldLogin?.text!, let  senha = self.textFieldSenha?.text!{
            return login != "" && senha != ""
        }
        return false
    }
    
    func showAlertMessage(title: String, message : String){
        //Criando o alerta
        let alerta: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //Adicionando uma ações ao alerta
        
        //cria o botao OK
        let acaoOK = UIAlertAction(title: "OK", style: .default, handler: ({(action) in
            
        }))
        
        //Adiciona as acoes ao alerta
        alerta.addAction(acaoOK)
        
        //Apresenta o Alert
        self.present(alerta, animated: true, completion: nil)
    }
    
    func showAlertLogin(title: String, message: String){
        //cria o alerta
        let alerta = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //cria as acoes
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            //pegando a TextField
            let textField = alerta.textFields
            
            //resgatando o texto da textField
            if let givenSenha = textField?[1].text, let givenLogin = textField?[0].text {
             
                if self.checkLogin(givenLogin: givenLogin, givenSenha: givenSenha){
                    self.hideButton(for: self.buttonAcessar)
                    self.showButton(for: self.buttonAcaoDestrutiva)
                    
                } else {
                    self.showAlertMessage(title: "Alerta", message: "Login ou senha inválidos")
                }
            
            }
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (action) in
            print("clicou botao cancel")
        }
        
        //Adiciona os botoes
        alerta.addAction(acaoOK)
        alerta.addAction(acaoCancelar)
        
        //Adiciona um textField para o login
        alerta.addTextField { (textField) in
            textField.placeholder = "Digite seu login"
            
        }
        
        //Adiciona um textField para a senha
        alerta.addTextField { (textField) in
            textField.placeholder = "Digite sua senha"
            textField.isSecureTextEntry = true
        }
        
        //Mostra / Apresenta os botoes
        self.present(alerta, animated: true, completion: nil)
    }
    
    func showActionSheet(title: String, message: String){
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
            self.senha = ""
            self.login = ""
            self.hideButton(for: self.buttonAcaoDestrutiva)
            self.showButton(for: self.buttonAcessar)
            self.showButton(for: self.buttonCadastrar)
            self.textFieldLogin.isHidden = false
            self.textFieldSenha.isHidden = true
            
            
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            print("Clicou Cancelar no ActionSheet")
        }
        actionSheet.addAction(acaoOK)
        actionSheet.addAction(acaoCancelar)
        
        self.present(actionSheet, animated: true)
    }
    
    
    func thereIsAValidLogin() -> Bool{
        return self.login != "" && self.senha != ""
    }
    
    func checkLogin(givenLogin : String, givenSenha: String) -> Bool{
        return self.login == givenLogin && self.senha == givenSenha
    }
    
   
}

