//
//  PratosTableViewController.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 09/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class PratosTableViewController: UITableViewController {

    let pratosArray = PratoDao().listarPratos()
    
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
        return pratosArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pratosCell", for: indexPath)
        let row = indexPath.row
        let prato = pratosArray[row]
        
        cell.textLabel?.text = prato.nome
        cell.detailTextLabel?.text = "\(prato.preco)"
      //  let imageView = UIImageView(image: prato.imagens?[0])
       
        cell.imageView?.image = prato.imagens?[0]

        return cell
    }
 

   

}
