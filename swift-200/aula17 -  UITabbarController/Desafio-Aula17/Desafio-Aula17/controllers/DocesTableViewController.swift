//
//  DocesTableViewController.swift
//  Desafio-Aula17
//
//  Created by LuizRamos on 09/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class DocesTableViewController: UITableViewController {

    let sobremesaArray = SobremesaDao().listarSobremesas()
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
        return self.sobremesaArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "docesCell", for: indexPath)
//        let row = indexPath.row
//        cell.textLabel?.text = docesArray[row]
//
//        return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "sobremesasCell", for: indexPath)
        let row = indexPath.row
        let sobremesa = sobremesaArray[row]
        
        cell.textLabel?.text = sobremesa.nome
        cell.detailTextLabel?.text = "\(sobremesa.preco)"
        let img = sobremesa.imagens?[0]
        
        cell.imageView?.image = sobremesa.imagens?[0]
        
        
        return cell
    
    
    }
    
}
