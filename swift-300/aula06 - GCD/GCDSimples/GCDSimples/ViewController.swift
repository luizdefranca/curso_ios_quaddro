//
//  ViewController.swift
//  GCDSimples
//
//  Created by LuizRamos on 11/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit


/*
 ================ Glossário =================
 - GCD: Grand Central Dispatch - um local em memória onde ficam armazenadas as filas de processos, cada uma com a sua devida prioridade.
 - Queue: é uma fila de processos;
 - Main Queue: é a fila principal de processos. É nela que são processados todos os blocos que desenvolvem e toda a interface gráfica;
 - Global Queue: é a fila paralela de processos. Pode ser acessada sempre que tiver a necessidade de tirar um processo da fila principal.
 - Threads: é uma tarefa. Cada tarefa indicada por um bloco de execução, ou seja, um abrir e fechar de chaves ({}).
 - Sync: indica processos síncronos. Onde uma tarefa somente pode ser executada depois que outra tarefa que está na mesma fila for encerrada.
 - Assync: indica processos assíncronos. Onde cada tarefa é independente de qualquer outra tarefa.
 
 
 
 
*/
class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
   
    @IBAction func processarPrincipal(_ sender: Any) {
        
        for processoA in 1...5 {
            print("Processando A ", processoA)
            Thread.sleep(forTimeInterval: 1.0)
        }
    }
    
    @IBAction func processarParalelo(_ sender: Any) {
        
        //Despachando uma tarefa para a fila paralela de processos
        DispatchQueue.global().async {
            //Estamos dentro de uma closure. Qualquer referencia feito dentro de uma closure deve conter self na frente.
         
            for processoB in 1...5 {
                print("Processando B ", processoB)
                Thread.sleep(forTimeInterval: 1.0)
            }
            
        }
    }
    
    //MARK: - Metods


}

