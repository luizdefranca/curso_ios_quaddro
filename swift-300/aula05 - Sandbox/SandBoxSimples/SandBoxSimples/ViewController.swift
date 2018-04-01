//
//  ViewController.swift
//  SandBoxSimples
//
//  Created by LuizRamos on 02/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

let caminhoRaiz = NSHomeDirectory()
let caminhoDocuments = (caminhoRaiz as NSString).appendingPathComponent("Documents")
class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //Declarando um elemento que servirá de base para a criação de uma nova pasta
    //Esse mesmo elemento pode ser utilizado posteriormente para acessar essa pasta.
    
    let caminhoNovaPasta = (caminhoDocuments as NSString).appendingPathComponent("NovaPasta")
    
    //Criando o objeto gerenciador de arquivos
    let gerenciadorArquivos = FileManager.default //default define que todos os comando de gerenciamento estao disponíveis (apagar, escrever, copia, etc) - este objeto é um singleton
    
    
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(caminhoRaiz + "\n")
//        print(caminhoDocuments)
        
        //criando a nova pasta dentro da estrutura sandbox utilizando como base o caminhoNovaPasta e o comando de FileManager para criacao de Diretório
        
        do{
            //se a tentativa de execucao do método for bem sucedida, caimos no do
            
            try gerenciadorArquivos.createDirectory(atPath: caminhoNovaPasta, withIntermediateDirectories: false, attributes: nil)
            print("pasta criada com sucesso")
        } catch{
            //se a tentativa falhar caímos no catch. Com isto podemos tratar o erro.
            print("Error ao criar a pasta")
            print(error.localizedDescription) //exibe o texto de descricao do erro
        }
        
        //Removendo um elemento (pasta ou arquivo) do caminho indicado com o comando do FileManager
        
        do {
            try gerenciadorArquivos.removeItem(atPath: caminhoNovaPasta)
            print("Elemento removido com sucesso!")
        } catch  {
            print("Erro ao remover o elemento")
            print(error.localizedDescription)
        }
    }
    
    //MARK: - Actions
    
    //MARK: - Metods


}

