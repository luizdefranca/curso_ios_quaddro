//
//  ViewController.swift
//  DesafioTabuada2
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var primeiroSegment: UISegmentedControl!
    
    
    @IBOutlet weak var segundoSegment: UISegmentedControl!
    
    @IBOutlet weak var labelResultado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let primeiroNumero : Int =  primeiroSegment.selectedSegmentIndex + 1
        let segundoNumero : Int =  segundoSegment.selectedSegmentIndex + 1
        
        labelResultado.text = "\(primeiroNumero) X \(segundoNumero) = \(primeiroNumero * segundoNumero)"
        
        
    }

    @IBAction func alterarSomar(_ sender: UISegmentedControl) {
        let primeiroNumero : Int =  primeiroSegment.selectedSegmentIndex + 1
        let segundoNumero : Int =  segundoSegment.selectedSegmentIndex + 1
        
        labelResultado.text = "\(primeiroNumero) X \(segundoNumero) = \(primeiroNumero * segundoNumero)"
    }
    
    


}

