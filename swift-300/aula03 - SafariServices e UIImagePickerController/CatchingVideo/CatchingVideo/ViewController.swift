//
//  ViewController.swift
//  CatchingVideo
//
//  Created by LuizRamos on 28/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import AVKit //framework responsável pelo trabalho com player nativo de audio e video

import MobileCoreServices //Framework responsável por gerar arquivo de mídia de diversas extensões, como vídeos, audios e imagens

//MARK: - Global Proprieties
// Por padrão todas as variáveis fora de classe são públicas
var objDeAcessoOutraViewController = MyPlayerViewController() //workaroud == gambiarra :) !

class ViewController: UIViewController {

   
    //MARK: - IBOutlet
    
    
    //MARK: - Proprieties
    
    let imageSelector = UIImagePickerController()
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    
    @IBAction func takeVideo(_ sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imageSelector.sourceType = .camera
            imageSelector.delegate = self
            
           
            //Definindo o tipo de arquivo a ser capturado (.mov)
            imageSelector.mediaTypes = [kUTTypeMovie as String]
            
            //Alterando o tipo de captura da camera (photo/video)
            imageSelector.cameraCaptureMode = .video
            
            present(imageSelector, animated: true, completion: nil)
            
        } else {
            let alerta = UIAlertController(title: "Problema na camera", message: "Camara sem permissao de acesso", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alerta.addAction(ok)
            present(alerta, animated: true, completion: nil)
        }
    }
    
    //MARK: - Methods


}

//MARK: Extensions
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        //Guardando o video capturado em um repositorio , observar que é UIImagePickerControllerMediaURL
        let videoURL = info[UIImagePickerControllerMediaURL] as! URL
        
        //Dispensando a janela da camera
        picker.dismiss(animated: true, completion: nil)
        
        //Alocando o video capturado no player
        objDeAcessoOutraViewController.player = AVPlayer(url: videoURL)
        
        
        //Reproduzindo o video
        objDeAcessoOutraViewController.player?.play()
    }
    
}
