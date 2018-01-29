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
        
        //Apresentando o UIAlertController
        self.present(alertaComum, animated: true, completion: {() in print("terminou")}) //o completion é executada antes da acao do botao do alerta
        
    }
    
    @IBAction func criaAlertaComTexto(_ sender: UIButton) {
    }
    
    @IBAction func criaAlertaComSenha(_ sender: UIButton) {
    }
    
    @IBAction func criaAlertaComLoginSenha(_ sender: UIButton) {
    }
    
    @IBAction func criaActionSheet(_ sender: UIButton) {
    }
    //MARK: - Methods
    
    
}

