//
//  ViewController.swift
//  DesafioSegmetedCores - Aula 08
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    let cores: Array<UIColor> = [UIColor.white, UIColor.green, UIColor.blue, UIColor.black]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }

    @IBAction func changeViewColor(_ sender: UISegmentedControl) {
        let row = sender.selectedSegmentIndex
        self.view.backgroundColor = cores[row]
        
    }
    
}

