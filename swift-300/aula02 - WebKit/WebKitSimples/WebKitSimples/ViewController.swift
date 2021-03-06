//
//  ViewController.swift
//  WebKitSimples
//
//  Created by LuizRamos on 27/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

/*
 ==== Glossário =====
 1. Sites com o protocolo seguro https, não precisam de permissão para serem acessados;
 
 2. Para acessarmos sites sem protocolos https, ou seja http, precisamos pedir uma permissão ao sistema iOS. Essa permissão é requirida no arquivo que está dentro do nosso pacote com nome de info.plist;
 3. Acessar "Information Property List" e clicar no sinal de mais ( + ). Depois disso selecionar a opcao "App Transport Security Settings".
 4. Acessar a opcao "App Transport Security Settings" e clicar no sinal de mais( + ). Irão aparecer três opcoes:
        a- Allow Arbitrary Loads - permite acessar qualquer servico (http, ftp, etc)
        b- Allow Arbitrary Loads in Web Content - acessa apenas conteudo web (http e https)
        c- Exception Domains - acessa apenas os serviços indicados
 5. Alterar o valor da chave de NO para YES
 */

import UIKit

//importar o framework responsável por abrir janelas da web dentro da aplicação
import WebKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var myWKView: WKWebView!
    
    //MARK: - Proprieties
    
    
    let url = "https://www.apple.com"
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //criando um objeto URl que indica um endereco na web
        //Digite o endereco web completo indicando o protocolo http, ou https
        guard let endereco = URL(string: url) else {
            //TODO: criar um controle de erros
            return
        }
        
        //criando uma requisicao para o endereco da web
        let requisicaoLoad = URLRequest(url: endereco)
        
        //executando a requisicao load
        
        myWKView.load(requisicaoLoad)
        
    }
    
    //MARK: - Actions
    
    //MARK: - Metods
}

