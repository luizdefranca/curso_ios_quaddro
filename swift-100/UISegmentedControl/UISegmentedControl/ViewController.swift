//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySegmented: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mySegmented.selectedSegmentIndex = -1
    }

    @IBAction func changedSegment(_ sender: UISegmentedControl) {
        
        print("indice selecionado ", sender.selectedSegmentIndex)
    }
    

}

