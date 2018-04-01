//
//  ViewController.swift
//  processosAssincronos
//
//  Created by LuizRamos on 26/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak var labelUP: UILabel!
    
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var labelDown: UILabel!
    //MARK: - Proprieties
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
  
    @IBAction func start(_ sender: Any) {
        var valueFromUp = 0
        var valueFromDown = 0
        
        self.buttonStart.isEnabled = false
        
        //Updating the labelUP
        DispatchQueue.global().async {
            
            //Using "for" to simulate a heavy process
            for value in 11...20 {
                DispatchQueue.main.async {
                    valueFromUp = value
                    self.labelUP.text = "\(valueFromUp)"
                }
                Thread.sleep(forTimeInterval: 0.7)
               
                if valueFromDown == 15 {
                    DispatchQueue.main.async {
                        self.buttonStart.isEnabled = true
                    }
                    
                }
            }
            
        }
        
        //Updating the labelDOWN
        
        DispatchQueue.global().async {
            
            //Using "for" to simulate a heavy processo
            for value in 2...15 {
                valueFromDown = value
                DispatchQueue.main.async {
                    self.labelDown.text = "\(valueFromDown)"
                }
                
                Thread.sleep(forTimeInterval: 1.0)
                if valueFromUp == 20 {
                    DispatchQueue.main.async {
                        self.buttonStart.isEnabled = true
                    }
                    
                }
            }
            
        }
        
    }
    
    //MARK: - Methods

}

