//
//  ViewController.swift
//  UIColor
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewzinha: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewzinha.backgroundColor = .yellow
        let red = CGFloat(254)
        let green = CGFloat(0)
        let blue = CGFloat(26)
        
        let novaCor = UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }

    

}

