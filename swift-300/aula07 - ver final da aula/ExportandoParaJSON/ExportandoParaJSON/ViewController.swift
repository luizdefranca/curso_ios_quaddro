//
//  ViewController.swift
//  ExportandoParaJSON
//
//  Created by LuizRamos on 07/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//MARK: - Estrutura Sandbox
let caminhoRaiz = NSHomeDirectory()
let caminhoDocuments = (caminhoRaiz as NSString).appendingPathComponent("Documents")
let caminhoArquivo = (caminhoDocuments as NSString).appendingPathComponent("meusDados.json")

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    let dic1 = ["nome" : "Maria", "idade" : "35"]
    let dic2 = ["nome" : "Joaquim", "idade" : "29"]
    
    var arrayLista : Array<[String : String]> = []
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       print(caminhoDocuments)
        self.arrayLista.append(dic1)
        self.arrayLista.append(dic2)
        
        let dataJSON = try! JSONSerialization.data(withJSONObject: arrayLista, options: JSONSerialization.WritingOptions.prettyPrinted)
        
        let dadosEmNSData = dataJSON as! NSData
        dadosEmNSData.write(toFile: caminhoArquivo, atomically: true)
        print(caminhoArquivo)
    }
    
    //MARK: - Actions
    
    //MARK: - Metods

}

