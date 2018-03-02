//
//  ViewController.swift
//  GestosProg
//
//  Created by LuizRamos on 01/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var myView: UIView!
    
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Gesto Tap
        //No método inicializador, target indica qual objeto esta sendo tocado, e o action indica qual método será disparado
        let meuGestoTap = UITapGestureRecognizer(target: self, action: #selector(dispararGestoTap(_:)))
        
        meuGestoTap.numberOfTapsRequired = 2 //indica quantos taps serão necessários
        
        //Adiciona o gesto à View
        myView.addGestureRecognizer(meuGestoTap)
        
        
        
    }
    
   
    
    
    //MARK: - Actions
    
    //MARK: - Methods

    @objc func dispararGestoTap(_ gestoTap : UITapGestureRecognizer){
        print("Gesto Tap")
    }
}

