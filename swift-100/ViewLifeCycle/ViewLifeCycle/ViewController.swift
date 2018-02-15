//
//  ViewController.swift
//  ViewLifeCycle
//
//  Created by LuizRamos on 11/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

/*
 Sempre que vir o UI em uma classe quer dizer que ela herda de UIKit
 
 */
class ViewController: UIViewController {

    /*
     Método dispara quanda a view (do viewcontroller é carregada
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("viewDidLoad")
    }

    
    /*
 Método disparado quando a view irá aparecer
 */
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    
    /*
 Método disparado quando a view já apareceu
 */
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
   /*
 Método disparado antes da tela disaparecer
 */
 
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

