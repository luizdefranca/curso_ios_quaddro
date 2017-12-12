//
//  ViewController.swift
//  IBOutletsAndIBActions
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minhaLabel : UILabel!
    
    @IBOutlet weak var minhaView : UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.minhaView.backgroundColor = UIColor.lightGray
    }


    @IBAction func trocarTitulo(_ sender : UIButton){
        self.minhaLabel.text = "Um novo título"
    }

//    @IBAction func trocarCorView(_ sender: UIButton){
//        self.minhaView.backgroundColor = UIColor.magenta
//    }
    
    @IBAction func TrocarCorView(_ sender: UIButton) {
        
        
    }
    
}

