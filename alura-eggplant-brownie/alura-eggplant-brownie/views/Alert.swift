//
//  Alert.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 05/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
import UIKit
class Alert{
    let controller: UIViewController
    
    init(controller: UIViewController){
        self.controller = controller
    }
    func show(message: String){
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)
        controller.present(alert, animated: true, completion: nil)
    }
}
