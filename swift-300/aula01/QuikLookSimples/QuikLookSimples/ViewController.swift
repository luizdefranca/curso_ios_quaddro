//
//  ViewController.swift
//  QuikLookSimples
//
//  Created by LuizRamos on 26/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

import QuickLook //Importando o framework responsável por gerar visualizações de arquivos diversos

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    let visualizador = QLPreviewController()
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.visualizador.dataSource = self //implementando o protocolor dataSource
    }
    
    //MARK: - Actions
    @IBAction func mostrarArquivo(_ sender: UIButton) {
        present(self.visualizador, animated: true, completion: nil)
        
    }
    
    //MARK: - Methods
}

//MARK: - Extensions

//MARK: extensao do protocolo QLPreviewControllerDataSource

extension ViewController: QLPreviewControllerDataSource{
    //Método que define a quantidade de itens a ser exibido pelo visualizador
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    //Método que define quais serão os arquivos a serem exibidos
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        //indicando o caminho do arquivo a ser visualizado
        //Na sequencia de propriedade e métodos
        //Bundle indica o pacote do projeto
        //forResource indica o nome do arquivo em string
        //e ofType indica  extensão do arquivo em string
        let caminhoArquivo = Bundle.main.path(forResource: "5_Conselhos", ofType: "pdf")
        let arquivoURL = URL(fileURLWithPath: caminhoArquivo!)
        return arquivoURL as QLPreviewItem
    }
    
    
}
