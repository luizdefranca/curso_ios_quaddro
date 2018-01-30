//
//  ViewController.swift
//  UIAlertController
//
//  Created by LuizRamos on 28/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    let myStoryboard = UIStoryboard(name: "CustomAlertView", bundle: nil)
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
    
    @IBAction func criaAlertaComum(_ sender: UIButton) {
        //Criando o alerta
        let alertaComum: UIAlertController = UIAlertController(title: "Título do alerta comum", message: "Mensagem do alerta comum", preferredStyle: .alert)
        
        //Adicionando uma ações ao alerta
        
        //cria o botao OK
        let acaoOK = UIAlertAction(title: "OK", style: .default, handler: ({(action) in
            print ("clicou botao OK")
            
        }))
        
        //cria o botao Cancelar
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: { (action) in
            print("clicou botao Cancelar")
        })
        
        //Adiciona as acoes ao alerta
        alertaComum.addAction(acaoOK)
        alertaComum.addAction(acaoCancelar)
        /*
         Atenção: se o style do botao for o default a ordem em que vc inserir os botoes será a ordem em que aparecerão os botões
         */
        
        
        //Apresentando o UIAlertController
        self.present(alertaComum, animated: true, completion: {() in print("terminou")}) //o completion é executada antes da acao do botao do alerta
        
        
    }
    
    @IBAction func criaAlertaComTexto(_ sender: UIButton) {
        //cria o alerta
        let alerta = UIAlertController(title: "Alerta com texto", message: "Digite o seu nome e clique OK", preferredStyle: .alert)
        
        //cria as acoes
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
        
            //pegando a TextField
            let textField = alerta.textFields // Atentar que vc terá um array de textFields
            
            
            //resgatando o texto da textField
            if let nome = textField?[0].text{
            print("Olá \(nome ?? "texto vazio")") //aqui foi usada uma tratativa que no caso de nome ser nil será usado o texto "texto vazio"
            }
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (action) in
            print("clicou botao cancel")
        }
        
        //Adiciona os botoes
        alerta.addAction(acaoOK)
        alerta.addAction(acaoCancelar)
        
        //Adiciona um textField
        alerta.addTextField { (textField) in
            textField.placeholder = "Fulano de Tal"
        }
        
        //Mostra / Apresenta os botoes
        self.present(alerta, animated: true) {
            print("terminou o criaAlertaComTexto" )
        }
        
    }
    
    @IBAction func criaAlertaComSenha(_ sender: UIButton) {
        //seria igual ao alerta com texto
        //cria o alerta
        let alerta = UIAlertController(title: "Alerta com senha", message: "Digite a sua senha", preferredStyle: .alert)
        
        //cria as acoes
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            //pegando a TextField
            let textField = alerta.textFields // Atentar que vc terá um array de textFields
            
            
            //resgatando o texto da textField
            if let senha = textField?[0].text{
                print("sua senha é \(senha)")
            }
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (action) in
            print("clicou botao cancel")
        }
        
        //Adiciona os botoes
        alerta.addAction(acaoOK)
        alerta.addAction(acaoCancelar)
        
        //Adiciona um textField
        alerta.addTextField { (textField) in
            textField.placeholder = "Digite sua senha"
            textField.isSecureTextEntry = true
        }
        
        //Mostra / Apresenta os botoes
        self.present(alerta, animated: true) {
            print("terminou o criaAlertaComTexto" )
        }
        
    }
    
    @IBAction func criaAlertaComLoginSenha(_ sender: UIButton) {
        //seria igual ao alerta com texto
        //cria o alerta
        let alerta = UIAlertController(title: "Alerta com senha", message: "Digite a sua senha", preferredStyle: .alert)
        
        //cria as acoes
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            //pegando a TextField
            let textField = alerta.textFields // Atentar que vc terá um array de textFields
            
            
            //resgatando o texto da textField
            if let senha = textField?[1].text, let login = textField?[0].text{
                print("Seu login é '\(login)' e sua senha é '\(senha)'")
            }
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (action) in
            print("clicou botao cancel")
        }
        
        //Adiciona os botoes
        alerta.addAction(acaoOK)
        alerta.addAction(acaoCancelar)
        
        //Adiciona os textField
        alerta.addTextField { (textField) in
            textField.placeholder = "Login"
        }
        
        alerta.addTextField { (textField) in
            textField.placeholder = "Senha"
            textField.isSecureTextEntry = true
        }
        
        
        //Mostra / Apresenta os botoes
        self.present(alerta, animated: true) {
            print("terminou o criaAlertaComTexto" )
        }
        
    }
    
    @IBAction func criaActionSheet(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "ActionSheet", message: "Mensagem do ActionSheet", preferredStyle: .actionSheet)
        let acaoOK = UIAlertAction(title: "OK", style: .default) { (action) in
            print("Clicou Ok no ActionSheet")
        }
        
        let acaoCancelar = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            print("Clicou Cancelar no ActionSheet")
            }
        actionSheet.addAction(acaoOK)
        actionSheet.addAction(acaoCancelar)
        
        self.present(actionSheet, animated: true)
        
    }
    
    @IBAction internal func criaAlertaCom4Botoes(_ sender: UIButton){
        let alert = UIAlertController(title: "",
                                      message: "",
                                      preferredStyle: .alert)
        // Change font of the title and message
      
       

        let action1 = UIAlertAction(title: "Action 1", style: .default, handler: { (action) -> Void in
            print("ACTION 1 selected!")
        })
        
        let action2 = UIAlertAction(title: "Action 2", style: .default, handler: { (action) -> Void in
            print("ACTION 2 selected!")
        })
        
        let action3 = UIAlertAction(title: "Action 3", style: .default, handler: { (action) -> Void in
            print("ACTION 3 selected!")
        })
        
        // Cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
        
        // Restyle the view of the Alert
        alert.view.tintColor = UIColor.brown  // change text color of the buttons
        alert.view.backgroundColor = UIColor.cyan  // change background color
        alert.view.layer.cornerRadius = 25   // change corner radius

        // Add action buttons and present the Alert
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func criaAlertaComImagem(_ sender: UIButton) {
        let customAlert = self.myStoryboard.instantiateViewController(withIdentifier: "CustomAlertID") as! CustomAlertView
        customAlert.providesPresentationContextTransitionStyle = true
        customAlert.definesPresentationContext = true
        customAlert.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        customAlert.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        customAlert.delegate = self
        self.present(customAlert, animated: true, completion: nil)
    }
    //MARK: - Methods
    
    //MARK: - Delegates
}

//MARK: - Extensions
extension ViewController: CustomAlertViewDelegate {
    
    func okButtonTapped(selectedOption: String, textFieldValue: String) {
        print("okButtonTapped with \(selectedOption) option selected")
        print("TextField has value: \(textFieldValue)")
    }
    
    func cancelButtonTapped() {
        print("cancelButtonTapped")
    }
}
