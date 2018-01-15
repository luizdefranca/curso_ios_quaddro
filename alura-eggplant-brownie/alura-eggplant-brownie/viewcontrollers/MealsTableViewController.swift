//
//  MealsTableViewController.swift
//  alura-eggplant-brownie
//
//  Created by LuizRamos on 13/12/17.
//  Copyright © 2017 LuizRamos. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController, ViewControllerAddMealDelegate {
    
    var meals = [Meal(happiness: 3, name: "Mocotó"),
                 Meal(happiness: 5, name: "Bolo de Chocolate")]
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addMealSegue"){
            let viewAddMeal: ViewControllerAddMeal = segue.destination as! ViewControllerAddMeal
            viewAddMeal.delegate = self
        }
        
        
    }
    
  
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(showDetail))
        cell.addGestureRecognizer(longPressRecognizer)
        
        return cell
    }
    
    func add(_ meal: Meal){
        meals.append(meal)
        
        tableView.reloadData()
    }
    
    
    
    @objc func showDetail(recognize: UILongPressGestureRecognizer){
        if recognize.state == UIGestureRecognizerState.began{
            if let cell : UITableViewCell = (recognize.view as! UITableViewCell){
                if let indexPath = tableView.indexPath(for: cell){
                    let row = indexPath.row
                    let meal = meals[row]
                    
                    let message = meal.detail()
                    
                    let alerta = UIAlertController(title: meal.name, message: message, preferredStyle: UIAlertControllerStyle.alert)
                    let remove = UIAlertAction(title: "Remove", style: .destructive, handler: removeSelected)
                    alerta.addAction(remove)
                    let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
                    alerta.addAction(cancel)
                    present(alerta, animated: true, completion: nil)
                   
                    print("long press... \(meal.name)")
                }
            }
        
        }
    }
    
    private func removeSelected(action : UIAlertAction){
        print("item removido")
    }
}
