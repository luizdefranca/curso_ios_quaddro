//
//  PratosTableViewController.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 09/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class PratosTableViewController: UITableViewController {

    let pratosArray = ["Feijão Tropeiro", "Ovo Frito", "Frango a passarinho", "Bife com Fritas", "Feijoada", "Churrasco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pratosArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pratosCell", for: indexPath)
         let row = indexPath.row
         cell.textLabel?.text = pratosArray[row]

        return cell
    }
 

   

}
