//
//  ViewController.swift
//  DesafioTabuadaSegmeted
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySegment.selectedSegmentIndex = -1
    }

    
    @IBAction func mostrarTabuada(_ sender: UISegmentedControl) {
        let numero : Int = sender.selectedSegmentIndex + 1
        
        for i in 1...10{
           print("\(numero) X \(i) = \(numero * i)")
        }
    }
    

}

