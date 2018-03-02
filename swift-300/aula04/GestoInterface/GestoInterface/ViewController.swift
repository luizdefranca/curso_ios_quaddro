//
//  ViewController.swift
//  GestoInterface
//
//  Created by LuizRamos on 01/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var myView: UIView!
    
    //MARK: - Proprieties
    
    var flagPodeMover = false
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myView.backgroundColor = UIColor.red
        
    }
    
    //MARK: - Actions
    
    @IBAction func dispararTap(_ sender: UITapGestureRecognizer) {
        if myView.backgroundColor == UIColor.red {
            myView.backgroundColor = UIColor.green
            self.flagPodeMover = true
        } else {
            myView.backgroundColor = UIColor.red
            self.flagPodeMover = false
        }
    }
    
    @IBAction func dispararPan(_ sender: UIPanGestureRecognizer) {
        
        if self.flagPodeMover{
            let posicao = sender.location(in: self.view)
            
            self.myView.center = posicao
        }
    }
    
    //MARK: - Methods


}

