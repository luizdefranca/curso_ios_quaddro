//
//  ViewController.swift
//  Desafio-aula16
//
//  Created by LuizRamos on 08/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - OutLets
    @IBOutlet weak var personagem1Button: UIButton!
    
    @IBOutlet weak var personagem2Button: UIButton!
    
    @IBOutlet weak var personagem3Button: UIButton!
    
    @IBOutlet weak var personagem4Button: UIButton!
    
    @IBOutlet weak var personagem5Button: UIButton!
    
    @IBOutlet weak var mySlider: UISlider!
    
    
    //MARK: - Proprieties
    
    
    var buttonArray : [UIButton]!
    var lastValue : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonArray  = [self.personagem1Button, self.personagem2Button, self.personagem3Button, self.personagem4Button, self.personagem5Button]
        
        for button in buttonArray{
            changeButton(button)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguePictureScreen" {
            let pictureScreen = segue.destination as! PictureScreenViewController
//            pictureScreen.personagem = 
            
        }
    }
    
    
    
    @IBAction func showAndHideButton(_ sender: UISlider) {
        
        let value = Int(sender.value)
        if value == 0 {
            return
        } else {
            let button = buttonArray[value + 1]
            changeButton(button)
        }
        
    }
    
    func changeButton(_ button: UIButton){
        button.isHidden = !button.isHidden
    }
    
}

