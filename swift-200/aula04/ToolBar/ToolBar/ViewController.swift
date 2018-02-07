//
//  ViewController.swift
//  ToolBar
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var textViewUnica: UITextView!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textViewUnica.text = nil
    }
    
    //MARK: - Actions
    @IBAction func clicouVoltar(_ sender: Any) {
        self.textViewUnica.text = "voltar"
    }
    
    @IBAction func cliclouPlay(_ sender: UIBarButtonItem) {
        self.textViewUnica.text = "Play"
    }
    
    
    @IBAction func clicouAvançar(_ sender: UIBarButtonItem) {
        self.textViewUnica.text = "avançar"
    }
    //MARK: - Metods


}

