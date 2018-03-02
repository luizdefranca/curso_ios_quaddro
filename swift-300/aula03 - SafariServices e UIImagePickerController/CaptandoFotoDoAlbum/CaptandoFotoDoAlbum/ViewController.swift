//
//  ViewController.swift
//  CaptandoFotoDoAlbum
//
//  Created by LuizRamos on 28/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var myImageView: UIImageView!
    
    //MARK: - Proprieties
    let imageSelector = UIImagePickerController()
    
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageSelector.delegate = self
        self.imageSelector.sourceType = .photoLibrary
    }
    
    //MARK: - Actions
    
    @IBAction func escolherFoto(_ sender: UIButton) {
        
        present(imageSelector, animated: true, completion: nil)
    }
    
    //MARK: - Methods


}

//MARK: - Extensions
//OBS: podem ser usada os os dois protocolos na mesma extensão

//MARK: UIImagePickerControllerDelegate
extension ViewController: UIImagePickerControllerDelegate {
   
    //Método disparado quando um objeto é escolhido ou captado no imagePicker
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let midiaType = info[UIImagePickerControllerMediaType] as? String{
            if midiaType == "public.image"{
                print("É imagem")
            }
            if midiaType == "public.video"{
                print("É video")
            }
        }
        let chooseImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        myImageView.image = chooseImage
        picker.dismiss(animated: true, completion: nil)
    }
    
    //Método disparado quando o imagePicker é cancelado
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

//MARK: UINavigationControllerDelegate
extension ViewController: UINavigationControllerDelegate {
    
}
