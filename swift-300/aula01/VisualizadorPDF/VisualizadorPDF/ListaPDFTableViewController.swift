//
//  ListaPDFTableViewController.swift
//  VisualizadorPDF
//
//  Created by LuizRamos on 26/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import QuickLook

class ListaPDFTableViewController: UITableViewController {
    //MARK: OutLets
    
    //MARK: Propriedades
    
    let arrayPDF = ["5_Conselhos", "Identdade da Sua Empresa", "Marketing Digital"]
    
    
    //MARK: Metodos
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = self.arrayPDF.count
        return numberOfRows
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        cell.textLabel?.text = self.arrayPDF[indexPath.row]
        
        return cell
    }
    
    
    //MARK: - Métodos de UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let visualizador = QLPreviewController()
        visualizador.dataSource = self
        
        //Atencao - Para exibir uma controller dentro de um contexto de uma navigationController
        navigationController?.pushViewController(visualizador, animated: true)
        
    }

}

//MARK: - Extensions

//MARK: extensão para adocao do protocolo QLPreviewControleDataSource
extension ListaPDFTableViewController: QLPreviewControllerDataSource {
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        let indice = tableView.indexPathForSelectedRow?.row
        let nomeArquivo : String = arrayPDF[indice!]
        let caminhoArquivo = Bundle.main.path(forResource: nomeArquivo, ofType: "pdf")
        let arquivoURL = URL(fileURLWithPath: caminhoArquivo!)
        return arquivoURL as QLPreviewItem
    }
    
    
    
}
