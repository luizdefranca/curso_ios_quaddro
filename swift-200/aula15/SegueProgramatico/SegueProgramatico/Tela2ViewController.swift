//
//  Tela2ViewController.swift
//  SegueProgramatico
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class Tela2ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    var propriedadeVindaDeOutraTela : String?
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let conteudo = self.propriedadeVindaDeOutraTela{ print(conteudo)
        }
    }
    
    //MARK: - Actions
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //MARK: - Methods

}
