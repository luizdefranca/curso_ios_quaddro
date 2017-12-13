//
//  ViewController.swift
//  RGBSliders
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var redslider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.trocarCor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trocarCor(){
        let red = CGFloat(self.redslider.value)
        let green = CGFloat(self.greenSlider.value)
        let blue = CGFloat(self.blueSlider.value)
        let novaCor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        self.view.backgroundColor = novaCor
    }

}

