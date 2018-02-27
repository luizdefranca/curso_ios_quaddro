//
//  ViewController.swift
//  TratamentoDeErros
//
//  Created by LuizRamos on 15/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var login = "Admin"
    var senha = "admin"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Chamando um método
//            self.efetuarLogin(login: "admin", senha: "Admin")
/*

         quando tentamos efetuar uma chamada de throw function o sistema obriga a realizar uma espécie de tratativa
 */
        //Catch genérico
        do{
            
         try   self.efetuarLogin(login: "admin", senha: "Admin")
        } catch{
            print("Login nao efetuado! Algo errado aconteceu!")
        }
        
        //catch específico
        
        
    }

    func efetuarLogin(login: String, senha: String) throws {
        if  login != self.login && senha != self.senha {
            throw ErroDeAcesso.loginOuSenhaErrados
        } else if senha != self.senha{
            throw ErroDeAcesso.senhaErrada
        } else if login != self.login{
            throw ErroDeAcesso.loginErrado
            
        }
        print("Login efetuado com sucesso!")
        
    }


}

