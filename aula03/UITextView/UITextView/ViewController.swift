//
//  ViewController.swift
//  UITextView
//
//  Created by LuizRamos on 17/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//







import UIKit

/*
 
 UITextView é um elemento de tela que exibe uma area editável com múltiplas linhas que tem barra de rolagem nativa.
 
 */
class ViewController: UIViewController, UITextViewDelegate {

    //MARK: - IBOutlet
    @IBOutlet weak var textViewUnico: UITextView!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        
        //atribui o delegate para o TextView - sem ele os métodos nao serao disparados
        self.textViewUnico.delegate = self
        super.viewDidLoad()
        //Propriedade que define o texto da TextView
        self.textViewUnico.text = nil
        
        //propriedade que verifica se há texto no objeto
        if(self.textViewUnico.text!.isEmpty){
            print("sem texto")
        }else {
            print("com texto")
        }
        //propriedade que define se o objeto é editavel
        self.textViewUnico.isEditable = false
        
        //propriedade que define se o texto pode ser selecionado
//        self.textViewUnico.isSelectable = false
        
        
    }

    //MARK: - Actions
    
    @IBAction func apresentarTexto(_ sender: UIButton) {
        self.textViewUnico.text = "Batatinha quando nasce esparra ramas pelo chão"
    }
    //MARK: - Metods
    
    //MARK: - UITextViewDelegate Metods
    
    
    //Método que é disparado quando a edição inicia
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("iniciou edicao")
    }
    
    //Método que é disparado quanto tem alguma alteracao no texto
    func textViewDidChangeSelection(_ textView: UITextView) {
        print("houve alteracao no texto")
    }
    
    //Método que disparado quando termina a edicao, perde o foco
    func textViewDidEndEditing(_ textView: UITextView) {
        print("terminou a edicao")
        
    }
    
  

}

