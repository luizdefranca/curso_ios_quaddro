//
//  ViewController.swift
//  VisualizadorImagem
//
//  Created by LuizRamos on 26/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

import QuickLook

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var imageViewResultado: UIImageView!
    
    //MARK: - Proprieties
    
    var arrayNomeImagens : [String] = []
    
    let visualizador = QLPreviewController()
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arrayNomeImagens = populaArray()
        self.visualizador.dataSource = self
        self.visualizador.delegate = self
        
    }
    
    //MARK: - Actions
    
    @IBAction func escolherImagem(_ sender: UIButton) {
        self.present(self.visualizador, animated: true, completion: nil)
    }
    //MARK: - Methods

    func populaArray() -> [String]{
        var nomesImagens: Array<String> = []
        for numero in 1...4{
            let nomeCapa = "capa\(numero)"
            nomesImagens.append(nomeCapa)
        }
        return nomesImagens
    }

}

extension ViewController: QLPreviewControllerDataSource{
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return self.arrayNomeImagens.count
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        //Escolhendo o nome do arquivo atual
        let nomeImagemAtual = arrayNomeImagens[index]
        
        
        //indicando o Caminho do ARquivo
        let caminhoArquivo = Bundle.main.path(forResource: nomeImagemAtual, ofType: "png")
        let arquivoURL = URL(fileURLWithPath: caminhoArquivo!)
        
        return arquivoURL as QLPreviewItem
    }
    
    
}

extension ViewController: QLPreviewControllerDelegate{
    
    //Método disparado quando a janela do quick look esta presta a ser dispensada
    func previewControllerWillDismiss(_ controller: QLPreviewController) {
        let indice = controller.currentPreviewItemIndex
        let nomeImagem = self.arrayNomeImagens[indice] + ".png"
        self.imageViewResultado.image = UIImage(named: nomeImagem)
    }
}
