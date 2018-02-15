//
//  ViewController.swift
//  AluraViagens
//
//  Created by LuizRamos on 22/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viagensTableView: UITableView!
    
    @IBOutlet weak var hoteisButton: UIView!
    
    @IBOutlet weak var pacotesButton: UIView!
    
    
    let listaViagem = ViagemDAO().retornaTodasAsViagens()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viagensTableView.delegate = self
        self.viagensTableView.dataSource = self
        self.pacotesButton.layer.cornerRadius = 10
       
    }

}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "viagemCell", for: indexPath) as! TableViewCell
        
        let row = indexPath.row
        let viagem : Viagem = listaViagem[row]
        cell.tituloLabel.text = viagem.titulo
        cell.precoLabel.text = "\(viagem.preco)"
        cell.quantidadeDiasLabel.text = "\(viagem.quantidadeDeDias)"
        if let imagem = UIImage(named: viagem.imagem){
        cell.imageView?.image = imagem
        }
        cell.imageView?.layer.cornerRadius = 15
        cell.imageView?.layer.masksToBounds = true
        return cell
    }
    
    
}
