//
//  ViewController.swift
//  ImagePickerSingle
//
//  Created by LuizRamos on 28/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //MARK: - Proprieties
    
    //Objeto responsável por acessar o album de fotos ou a câmera
    let imageSelector = UIImagePickerController()
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Definindo o tipo de acesso do imagePicker, este pode variar entre camera, fotos salvas, ou memórias de fotos.
        self.imageSelector.sourceType = .photoLibrary
        
    }
    
    //MARK: - Actions
    @IBAction func abrirAlbum(_ sender: UIButton) {
        present(self.imageSelector, animated: true, completion: nil)
    }
    
    //MARK: - Metods


}

