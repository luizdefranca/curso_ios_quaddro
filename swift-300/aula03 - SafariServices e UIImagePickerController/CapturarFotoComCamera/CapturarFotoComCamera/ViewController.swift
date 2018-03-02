//
//  ViewController.swift
//  CapturarFotoComCamera
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
       
       
    }
    
    //MARK: - Actions
    
    @IBAction func takeAPhoto(_ sender: UIBarButtonItem) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            self.imageSelector.sourceType = .camera
            present(self.imageSelector, animated: true, completion: nil)
        } else {
            print("Camera indisponível nesse dispositivo")
        }
    }
    
    //MARK: - Methods
}

//MARK: - Extensions

//MARK: UIImagePickerControllerDelegate and UINavigationControllerDelegate Protocols

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let imagemCapturada = info[UIImagePickerControllerOriginalImage] as! UIImage
        myImageView.image = imagemCapturada
        picker.dismiss(animated: true, completion: nil)
    }
}
