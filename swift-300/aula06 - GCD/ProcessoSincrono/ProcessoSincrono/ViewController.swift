//
//  ViewController.swift
//  ProcessoSincrono
//
//  Created by LuizRamos on 26/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var labelUP: UILabel!
    @IBOutlet weak var labelDown: UILabel!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //MARK: - Actions
    @IBAction func start(_ sender: UIButton) {
        //Dispatching all the process to global queue
        sender.isEnabled = false
        DispatchQueue.global().async {
            //Updating the labelUP
            DispatchQueue.global().sync {
                for value in 1...10 {
                    DispatchQueue.main.async {
                        self.labelUP.text = "\(value)"
                    }
                    Thread.sleep(forTimeInterval: 1.0)
                }
            }//Closing the Updating the labelUP
            
            
            //Updating the labelDown
            DispatchQueue.global().sync {
                for value in 11...20 {
                    DispatchQueue.main.async {
                        self.labelDown.text = "\(value)"
                    }
                    Thread.sleep(forTimeInterval: 1.0)
                }
            }//Closing the updating the labelDown
            
        }
        //Closing the Dispatch
        sender.isEnabled = false
    }
    
    //MARK: - Methods

}

