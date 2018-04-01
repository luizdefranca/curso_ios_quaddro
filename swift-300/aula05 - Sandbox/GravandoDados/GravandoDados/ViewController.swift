//
//  ViewController.swift
//  GravandoDados
//
//  Created by LuizRamos on 02/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

/*
  ------------ Glossário ------------
 
    -Classes básicas como String, Int, Array, Dictionary são dotadas de métodos próprios para gravação de arquivo em estrutura sandbox. Nesse caso não vamos depender de um FileManager para manipular o arquivo.

 */


import UIKit

//MARK: -Estrutura SandBox
let caminhoRaiz = NSHomeDirectory()
let caminhoDocuments = (caminhoRaiz as NSString).appendingPathComponent("Documents")
let caminhoArquivo = (caminhoDocuments as NSString).appendingPathComponent("texto.txt")

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    //MARK: - Proprieties
    var stringParaSanbox = ""
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text = ""
        
    }
    
    //MARK: - Actions
    
    @IBAction func salvar(_ sender: UIButton) {
        if !(self.myTextField.text!.isEmpty){
            stringParaSanbox = myTextField.text!
            do{
                //Em atomically, devemos colocar true. Isto é importante pois, quando o arquivo está sendo gravado, caso ocorra uma interrupcao da açnao, a última versão desse arquivo antes dessa gravação será mantida.
                try stringParaSanbox.write(toFile: caminhoArquivo, atomically: true, encoding: String.Encoding.utf8)
                print("Texto gravado com sucesso!")
            } catch {
                print("Erro ao tentar salvar o texto \"\(stringParaSanbox)\" no arquivo \"\(caminhoArquivo)\"")
                print(error.localizedDescription)
            }
            
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Preencha os campos corretamente", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alerta.addAction(ok)
            present(alerta, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func resgatar(_ sender: UIButton) {
        let stringResgatada = try? String(contentsOfFile: caminhoArquivo)
        self.myLabel.text = stringResgatada
    }
    
    
    //MARK: - Methods

}

