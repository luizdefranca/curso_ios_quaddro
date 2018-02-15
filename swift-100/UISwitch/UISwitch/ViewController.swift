//
//  ViewController.swift
//  UISwitch
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var meuSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Propriedade que define o tintColor (off)
        self.meuSwitch.tintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        
        //propriedade que define a cor on
        self.meuSwitch.onTintColor = #colorLiteral(red: 0.6254426927, green: 1, blue: 0.3592758311, alpha: 1)
        
        //propriedade que define a cor do Thumb
        self.meuSwitch.thumbTintColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        
        
    }

    
    @IBAction func dispararSwitch() {
        
        if self.meuSwitch.isOn{
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }else {
            self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.meuSwitch.setOn(!self.meuSwitch.isOn, animated: true)
        self.dispararSwitch()
        
    }
    
    
}

