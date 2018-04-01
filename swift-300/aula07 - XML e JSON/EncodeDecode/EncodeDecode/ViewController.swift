//
//  ViewController.swift
//  EncodeDecode
//
//  Created by LuizRamos on 07/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//MARK: - Estrutura Sandbox
let caminhoRaiz = NSHomeDirectory()
let caminhoDocuments = (caminhoRaiz as NSString).appendingPathComponent("Documents")
let caminhoArquivoParaSalvar = (caminhoDocuments as NSString).appendingPathComponent("meusDados.json")

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    var umEndereco : Endereco!
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Traduzindo um arquivo JSON com o Decode
        
        let caminhoArquivo = Bundle.main.url(forResource: "cep", withExtension: "json")
        let decodificador = JSONDecoder()
        let enderecoExtraido = try! decodificador.decode(Endereco.self, from: Data(contentsOf: caminhoArquivo!))
       
        //Imprimindo o enderecoExtraido
        print(enderecoExtraido)
        print(type(of: enderecoExtraido))
        
        //Exportar para JSON com o Encode
        print(caminhoDocuments)
        self.umEndereco = Endereco(cep: "50740445", logradouro: "Visconde de Barbacena", complemento: "apt 301", bairro: "Várzea", localidade: "", uf: "PE")
        
        let condificador = JSONEncoder()
        let novoJSON = try! condificador.encode(self.umEndereco)
        let enderecoEmNSData = novoJSON as NSData
        enderecoEmNSData.write(toFile: caminhoArquivoParaSalvar, atomically: true)
    }
    
    //MARK: - Actions
    
    //MARK: - Methods
}

