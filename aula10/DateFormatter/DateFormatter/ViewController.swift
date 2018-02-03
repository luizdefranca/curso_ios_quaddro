//
//  ViewController.swift
//  DateFormatter
//
//  Created by LuizRamos on 31/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //criando o objeto
        let dataAtual = Date()
        
        //exibindo o objeto de data
        print("Data atual: \(dataAtual)")
        print("---------------------------")
        
        //Temos uma classe padrão para gerenciar a formatacao de um objeto de Date. O DateFormatter tem como função formatar um objeto de Date.
        
        let formatador = DateFormatter()
        
        //Setando um style em nosso formatador para exibição
        //Formato fullStyle
        formatador.dateStyle = .full
        
        print("Data em FullStyle: \(formatador.string(from: dataAtual))")
        
        //Formato em ShortStyle
        formatador.dateStyle = .short
        print("Data em shortStyle: \(formatador.string(from: dataAtual))")
        
        //Podemos também criar nosso próprio estilo de formatacao
        //Setando um estilo personalizado no formatador
        
        formatador.dateFormat = "dd/MM/yyyy HH:mm:ss"
        print("Meu próprio estilo: \(formatador.string(from: dataAtual) )")
        
        //Criando um locale
        let localizacao = Locale(identifier: "pt_BR")
        formatador.locale = localizacao
        formatador.dateStyle = .full
        print("Data formatada Brasil: \(formatador.string(from: dataAtual))")
        
        
    }
    
    //MARK: - Actions
    
    //MARK: - Methods


}

