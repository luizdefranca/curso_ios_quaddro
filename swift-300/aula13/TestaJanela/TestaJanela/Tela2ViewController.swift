//
//  Tela2ViewController.swift
//  TestaJanela
//
//  Created by LuizRamos on 15/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class Tela2ViewController: UIViewController {

    //MARK: Actions
    
    @IBAction func dispararNotificao1(_ sender: Any) {
        //Método que postará a notificao 1
        
        NotificationCenter.default.post(name: nomeNotificacao1 , object: nil, userInfo: [notificacao1 : "Disparou a notificao 1"])
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func dispararNotificacao2(_ sender: Any) {
        //Método que postará a notificao 2
        
        NotificationCenter.default.post(name: nomeNotificacao2 , object: nil, userInfo: [notificacao2 : "Disparou a notificao 2"])
        self.dismiss(animated: true, completion: nil)
    }
}
