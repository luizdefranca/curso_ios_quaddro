//
//  TelinhaViewController.swift
//  ContainerView
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class TelinhaViewController: UIViewController {

    @IBOutlet weak var labelUnica: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.labelUnica.text = "Funfou mesmo"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
