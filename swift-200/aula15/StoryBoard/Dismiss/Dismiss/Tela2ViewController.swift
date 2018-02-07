//
//  Tela2ViewController.swift
//  Dismiss
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class Tela2ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("tela 2 - viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("tela 2 - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("tela 2 - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("tela 2 - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("tela 2 - viewDidDisappear")
    }
    //MARK: - Actions
    
    @IBAction func voltarSemSegue(_ sender: UIButton) {
        
        //Com o comando abaixo conseguimos voltar para a tela
        self.dismiss(animated: true) {
            print("Tela desimpilhada")
        }
    }
    //MARK: - Metods

}
