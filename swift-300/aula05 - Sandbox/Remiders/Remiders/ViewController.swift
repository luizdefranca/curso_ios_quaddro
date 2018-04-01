//
//  ViewController.swift
//  Remiders
//
//  Created by LuizRamos on 02/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//MARK: - Estrutura Sandbox
let caminhoRaiz = NSHomeDirectory()
let caminhoDocuments = (caminhoRaiz as NSString).appendingPathComponent("Documents")
let caminhoArquivo = (caminhoDocuments as NSString).appendingPathComponent("lembretes.plist")

class ViewController: UIViewController {
    //MARK: - IBOutlet
    
    @IBOutlet weak var textFieldReminder: UITextField!
    
    @IBOutlet weak var tableViewHistoric: UITableView!
    //MARK: - Proprieties
    var arrayReminders : Array<String> = []
    let fileManager = FileManager.default
    var myIndexPath = IndexPath()
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldReminder.delegate = self
        self.tableViewHistoric.delegate = self
        self.tableViewHistoric.dataSource = self
        
        //Verificando se o arquivo de lembretes exite no sandbox, para preencher
        //a table dom ow eqeow loto no inicio do app
        
        if fileManager.fileExists(atPath: caminhoArquivo){
            let rescuedReminders =  NSArray(contentsOfFile: caminhoArquivo)
            self.arrayReminders = rescuedReminders as! Array<String>
            }
        
    
    }
    
    //MARK: - Actions
    @IBAction func adicionar(_ sender: UIButton) {
        self.publicRemider()
        
    }
    
    @IBAction func limparTodosOsLembretes(_ sender: UIButton) {
        if fileManager.fileExists(atPath: caminhoArquivo) {
            do {
                try fileManager.removeItem(atPath: caminhoArquivo)
                self.arrayReminders.removeAll()
                self.tableViewHistoric.reloadData()
            } catch {
                let alerta = UIAlertController(title: "Alerta", message: error.localizedDescription, preferredStyle: .alert)
                let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
                alerta.addAction(ok)
                present(alerta, animated: true, completion: nil)
            }
        }
    }
    
    
    //MARK: - Methods
    func publicRemider(){
        if !(self.textFieldReminder.text!.isEmpty) {
            if  let remider = self.textFieldReminder?.text {
                self.arrayReminders.append(remider)
                
                //transformando o array em NSArray para ter acesso ao método de gravação
                let NSArrayReminders = self.arrayReminders as NSArray
             
                //Gravando o conteúdo do Array no arquivo
                NSArrayReminders.write(toFile: caminhoArquivo, atomically: true)
                self.tableViewHistoric.reloadData()
                self.textFieldReminder.text = ""
                self.textFieldReminder.resignFirstResponder()
                self.tableViewHistoric.scrollToRow(at: atualIndexPath(tableView: self.tableViewHistoric), at: UITableViewScrollPosition.none, animated: true)
            }
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Preencha os campos corretamente", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alerta.addAction(ok)
            present(alerta, animated: true, completion: nil)
        }
    }
    
    func atualIndexPath(tableView : UITableView) -> IndexPath{
        
        //Descobre quantas sections tem a tableView
        let lastSectionIndex = tableView.numberOfSections - 1
        
        //Pega o numero de linhas na ultima section
        let lastRowIndex = tableView.numberOfRows(inSection: lastSectionIndex) - 1
        
        //Constroi um IndexPath
        let indexPath = IndexPath(row: lastRowIndex, section: lastSectionIndex)
        
        return indexPath
    }
   
    //MARK: - UIResponder Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.becomeFirstResponder()
    }

}

//MARK: - Extensions

//MARK: UITextFieldDelegate

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.publicRemider()
        return true
    }
}

extension ViewController: UITableViewDelegate {
    /*
     Método quer permite a edicão de uma célula de uma tableView.
     define a permição para edição de uma célula
     */
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    /*
     Método que executa a edicao de uma célula
     */
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Limpando a ocorrência no array
            self.arrayReminders.remove(at: indexPath.row)
            
            //Atualizando o arquivo persistindo o array
            let NSArrayReminders = self.arrayReminders as NSArray
            NSArrayReminders.write(toFile: caminhoArquivo, atomically: true)
            
            //Limpando a ocorrencia na célula indicada
            self.tableViewHistoric.deleteRows(at: [indexPath], with: .left)
        }
    }

}



extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayReminders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "remiderCell", for: indexPath)
        cell.textLabel?.text = self.arrayReminders[indexPath.row]
        return cell
    }
    
    
}
