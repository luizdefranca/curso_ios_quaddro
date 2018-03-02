//
//  ViewController.swift
//  UtilizandoSafariService
//
//  Created by LuizRamos on 28/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //MARK: - Actions
    @IBAction func openAddress(_ sender: UIButton) {
        
        let address = URL(string: "http://www.apple.com")
        let mySafari = SFSafariViewController(url: address!)
        
        mySafari.delegate = self
        
        //mudando a cor dos botoes
        mySafari.preferredBarTintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        //mudando a cor de fundo das barras
        mySafari.preferredControlTintColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        
        //Definindo o estilo de escrita do botao
        mySafari.dismissButtonStyle = .done
        
        //Mostra o SafariService
        present(mySafari, animated: true, completion: nil)
        
        
    }
    
    //MARK: - Metods
}

//MARK: Extensao para adotar o protocolo
extension ViewController : SFSafariViewControllerDelegate{
    
    //Métod que é disparado quando o carregamento inicial de uma página se inicia com sucesso
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
     
        print("Carregamento inicial concluído com sucesso!")
    }
    
    
    //Método disparado quando a janela do safari view controle é encerrada
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("Safari View Controller encerrado!")
    }
}
