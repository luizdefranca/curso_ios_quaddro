//
//  ViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 12/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class ViewControllerAddMeal: UIViewController, UITableViewDataSource, UITableViewDelegate, AddAnItemDelegate {
    
    
   
    @IBOutlet var nameField : UITextField!
    @IBOutlet var happinessField : UITextField!
    
    @IBOutlet weak var tableView: UITableView?
    var delegate : ViewControllerAddMealDelegate?
    
    var items : Array<Item> = [
        Item("eggplant", 10.0),
        Item("Brownie", 10.0),
        Item("Zucchini", 30.0)
    ]
    
    var selected : Array<Item> = []
    
    
    override func viewDidLoad(){
        let newItemButton = UIBarButtonItem(title: "new item",
                                            style: UIBarButtonItemStyle.plain,
                                            target: self,
                                            action: #selector(showNewItem))
        
        navigationItem.rightBarButtonItem = newItemButton
    }
    
    @objc func showNewItem(){
        let newItem = NewItemViewController(delegate: self)
        
        if let navigation = navigationController{
            navigation.pushViewController(newItem, animated: true)
        }
    }
    @IBAction func add(){
      
        if let meal = getMealFromForm(){
            if let mealsTableDelegate = delegate{
                mealsTableDelegate.add(meal)
                if let navigation = self.navigationController {
                    navigation.popViewController(animated: true)
                    return
                } else {
                    Alert(controller: self).show(message: "Unable to go back, but the meal was added.")
                    return
                }
            }
        }
        Alert(controller: self).show(message: "Unable to add a meal")
    }

    //Needed fuctions of UITableViewDataSource Protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let item = items[row]
        
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = "name: \(item.name) - calories: \(item.calories)"
        return cell
    }

    //UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == UITableViewCellAccessoryType.checkmark{
                cell.accessoryType = UITableViewCellAccessoryType.none
                
                let row = indexPath.row
                let item = items[row]
                
                if let position = selected.index(of: item){
                    selected.remove(at: position)
                }
               
            } else {
                cell.accessoryType = UITableViewCellAccessoryType.checkmark
                let row = indexPath.row
                selected.append(self.items[row])
            }
        }
    }
    
 private func getMealFromForm() -> Meal?{
        
        if let happiness = convertToInt(happinessField?.text), let name = nameField?.text {
            let meal = Meal(happiness: happiness, name: name, items: self.selected)
            return meal
        }
        return nil
    }
  
    private func convertToInt(_ text : String?) -> Int?{
        if let intNumber = Int(text!){
            return intNumber
        } else {
            return nil
        }
    }
    
    //Function of AddAnItemDelegate
  func add(anItem item: Item) {
        self.items.append(item)
        if let table = tableView{
        table.reloadData()
        } else {
            let alert = Alert(controller: self)
            alert.show(message: "Unable to update the table")
        }
        
    }
    
}

