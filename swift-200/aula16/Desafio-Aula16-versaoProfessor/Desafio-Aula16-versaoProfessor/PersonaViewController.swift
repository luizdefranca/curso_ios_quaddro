//
//  PersonaViewController.swift
//  Desafio-Aula16-versaoProfessor
//
//  Created by LuizRamos on 08/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class PersonaViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var imageViewUnica: UIImageView!
    //MARK: - Proprieties
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        var imageArray  = [
            UIImage(named: "coyote.jpg"),
            UIImage(named: "gaguinho.jpg")!,
            UIImage(named: "mickey.jpg")!,
            UIImage(named: "pateta.jpg")!,
            #imageLiteral(resourceName: "patolino.jpg") //patolino.jpg
        ]
        print(controle)
        self.imageViewUnica.image = imageArray[controle - 1]
        print(controle)
    }
    
    //MARK: - Actions
    
    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    //MARK: - Methods

}
