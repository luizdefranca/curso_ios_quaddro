//
//  BebidasTableViewController.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 09/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class BebidasTableViewController: UITableViewController {

   
    let bebidasArray = ["Refrigerante litro", "Refrigerante lata", "Suco natural copo", "Suco natural jarra", "Cerveja itaipava", "Cerveja Antartica", "Cachaça"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.bebidasArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bebidasCell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = bebidasArray[row]
        
        return cell
    }
    

}
