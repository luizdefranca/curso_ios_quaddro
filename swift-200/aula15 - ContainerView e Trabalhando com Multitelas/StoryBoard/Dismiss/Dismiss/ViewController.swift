//
//  ViewController.swift
//  Dismiss
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
          print("tela 1 - viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("tela 1 - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("tela 1 - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("tela 1 - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("tela 1 - viewDidDisappear")
    }
    //MARK: - Actions
    
    //MARK: - Methods

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Passou")
        self.dismiss(animated: true, completion: nil)
    }
}

