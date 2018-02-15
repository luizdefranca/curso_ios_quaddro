//
//  ViewController.swift
//  SegueProgramatico
//
//  Created by LuizRamos on 07/02/18.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueTela2"{
            let tela2vc = segue.destination as! Tela2ViewController
            tela2vc.propriedadeVindaDeOutraTela = sender as! String
        }
    }
    //MARK: - Actions
    
    @IBAction func irParaTela2(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "segueTela2", sender: "Mensagem sendo enviada da tela1 para tela2" )
    }
    
    
    //MARK: - Metods


}

