//
//  ViewController.swift
//  GCDTratamentoDeInterface
//
//  Created by LuizRamos on 24/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var btnProcess: UIButton!
    
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
    @IBAction func process(_ sender: UIButton) {
        self.activityIndicator.startAnimating()
        self.btnProcess.isEnabled = false
        
        //Despachando para a fila paralela
        DispatchQueue.global().async {
            //O for esta sendo utilizado para simular um processo pesado
            for processo in 1...5 {
                if processo == 5 {
                    //Retornando para a fila principal para alterar os elementos da interface
                    DispatchQueue.main.async {
                        self.activityIndicator.stopAnimating()
                        self.btnProcess.isEnabled = true
                    }
                }
                print("Processando.... \(processo)")
                Thread.sleep(forTimeInterval: 1.0)
            }
            print("Processo do for")
        }
        print("processo da funcao")
   }
    
    //MARK: - Methods

}

