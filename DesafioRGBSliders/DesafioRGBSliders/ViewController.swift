//
//  ViewController.swift
//  DesafioRGBSliders
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    var red : CGFloat = CGFloat(0.5)
    
    var green : CGFloat = CGFloat(0.5)
    
    var blue : CGFloat = CGFloat(0.5)
    
    @IBAction func changeRed(_ sender: UISlider) {
        self.red = CGFloat(self.redSlider.value)
        self.view.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
    }
    
    @IBAction func changeGreen(_ sender: UISlider) {
        self.green = CGFloat(self.redSlider.value)
        self.view.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
    }
    
    @IBAction func changeBlue(_ sender: UISlider) {
        self.blue = CGFloat(self.redSlider.value)
        self.view.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
    }

    


}

