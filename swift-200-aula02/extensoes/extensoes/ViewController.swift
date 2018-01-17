//
//  ViewController.swift
//  extensoes
//
//  Created by LuizRamos on 16/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class Pessoa{
    var nome : String = ""
    var sobrenome : String = ""
    
}

extension Pessoa{
    var nomeCompleto : String{
        return "\(nome)  \(sobrenome)"
    }
}

extension String{
    
    var dobrado: String {
        return "\(self) \(self)"
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

