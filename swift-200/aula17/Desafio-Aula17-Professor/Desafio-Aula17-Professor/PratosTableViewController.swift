//
//  pratosTableViewController.swift
//  Desafio-Aula17-Professor
//
//  Created by LuizRamos on 09/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class PratosTableViewController: UITableViewController {

//    var arrayPratos = ["Feijão Tropeiro", "Ovo Frito", "Frago a passarinha", "Bife com Fritas", "Feijoada", "Churrasco"]
//
    
    var arrayPratos: [Prato] = [Prato("Feijao Tropeiro", 30), Prato("Ovo Frito", 15)]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.arrayPratos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pratoCell", for: indexPath)
        
        let row = indexPath.row
        
        cell.textLabel?.text = self.arrayPratos[row].nome
        cell.detailTextLabel?.text = "\(self.arrayPratos[row].preco)"
        cell.isUserInteractionEnabled = false //desabilita interação com  a célula
        
        return cell
    }

}
