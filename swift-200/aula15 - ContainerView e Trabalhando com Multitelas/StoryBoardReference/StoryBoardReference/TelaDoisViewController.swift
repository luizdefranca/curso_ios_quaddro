//
//  TelaDoisViewController.swift
//  StoryBoardReference
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class TelaDoisViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
