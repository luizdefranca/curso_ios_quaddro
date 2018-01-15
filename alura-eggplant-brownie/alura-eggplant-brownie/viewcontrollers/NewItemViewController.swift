//
//  NewItemViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 21/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var caloriesTxt: UITextField!
    
    
    var delegate : AddAnItemDelegate?
    
    
    init(delegate : AddAnItemDelegate){
        super.init(nibName: "NewItemViewController", bundle:
            nil)
        self.delegate = delegate
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    @IBAction func addItem(_ sender: Any) {
        if let name = self.nameTxt.text, let calories = self.caloriesTxt.text{
            
            let caloriesNum = Double(calories)!
            let item = Item(name, caloriesNum)
            print(item.name, item.calories)
            if let addAnItemDelegate = delegate{
                addAnItemDelegate.add(anItem: item)
            }
            
            if let navigation = navigationController{
                navigation.popViewController(animated: true)
                
            }
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
}
