//
//  ViewController.swift
//  NavegadorProprio
//
//  Created by LuizRamos on 27/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var webViewShower: WKWebView!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var btnBack: UIBarButtonItem!
    @IBOutlet weak var btnForward: UIBarButtonItem!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadURLRequest(endereco: "google.com.br")
        self.textFieldAddress.delegate = self
        self.webViewShower.navigationDelegate = self
    }
    
    //MARK: - Actions
    
    @IBAction func goHome(_ sender: UIBarButtonItem) {
        self.loadURLRequest(endereco: "google.com.br")
    }
    
    @IBAction func goAddress(_ sender: UIButton) {
        let address = self.textFieldAddress?.text
        self.loadURLRequest(endereco: address!)
        self.textFieldAddress.resignFirstResponder()
        
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        if self.webViewShower.canGoBack {
            
            self.webViewShower.goBack()
            
        }
    }
    
    @IBAction func forward(_ sender: UIBarButtonItem) {
        if self.webViewShower.canGoForward {
            self.webViewShower.goForward()
           
        }
    }
    
    
    //MARK: - UIResponder Methods
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.becomeFirstResponder()
    }

    //MARK: - Owne Methods
    
    func loadURLRequest(endereco: String){
        let stringAddress = "http://\(endereco)"
        guard let finalURL = URL(string: stringAddress) else {
            return
        }
        let urlRequest = URLRequest(url: finalURL)
        
        webViewShower.load(urlRequest)
        
    }
}

//MARK: - Extensions


//MARK: UITextFieldDelegate Protocol Extension
extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let address = self.textFieldAddress?.text
        loadURLRequest(endereco: address!)
        self.textFieldAddress.resignFirstResponder()
            
       
        return true
    }
}


//MARK: WKNavigationDelegate Protocol Extension

extension ViewController : WKNavigationDelegate {
    
    //método disparado quando uma url comeca a ser carregada
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("iniciou o carregamento")
        
        //Atualizando o estado dos botoes com relacao a voltar e avançar
        self.btnBack.isEnabled = webView.canGoBack
        self.btnForward.isEnabled = webView.canGoForward
    }
    
    //método disparado quando o carregamento de uma url é finalizado
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //Atualizando o conteúdo da barra de endereco (TextField)
        self.textFieldAddress.text = webView.url?.absoluteString
        
        //Atualizando o estado dos botoes com relacao a voltar e avançar
        self.btnBack.isEnabled = webView.canGoBack
        self.btnForward.isEnabled = webView.canGoForward
       
    }
    
    //método disparado quando um erro na navegação é encontrado. Esse erro pode ser falta de conexão ou endereço inexistente
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        
        let errorMensagen = error.localizedDescription
        //Disparando um alerta para avisar sobre a falta de conexao ou endereco errado
        let errorAlert = UIAlertController(title: "Alert", message: errorMensagen, preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        errorAlert.addAction(actionOK)
        present(errorAlert, animated: true, completion: nil)
    }
}
