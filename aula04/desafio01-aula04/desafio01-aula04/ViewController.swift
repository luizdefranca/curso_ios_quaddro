//
//  ViewController.swift
//  desafio01-aula04
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var imageSuperiorEsquerda: UIImageView!
    
    @IBOutlet weak var imageSuperiorDireita: UIImageView!
    
    @IBOutlet weak var imageInferiorEsquerda: UIImageView!
    
    @IBOutlet weak var imageInferiorDireta: UIImageView!
    
    @IBOutlet weak var segmentControlUnico: UISegmentedControl!
    //MARK: - Proprieties
    
    var arrayImage : Array<UIImage> = []
    var arrayImageView : Array<UIImageView> = []
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.arrayImageView.append(self.imageSuperiorEsquerda)
        self.arrayImageView.append(self.imageSuperiorDireita)
        self.arrayImageView.append(self.imageInferiorEsquerda)
        self.arrayImageView.append(self.imageInferiorDireta)
        
        self.segmentControlUnico.selectedSegmentIndex = -1
        
        for i in 1...13{
            let imageName = "frame-\(i).gif"
            let image = UIImage(named: imageName)
            print(imageName)
            print(image)
            if let image = image {
                arrayImage.append(image)
                print(image)
                
                
            }
        }
        print(self.arrayImage.count)
    }
    
    //MARK: - Actions
    @IBAction func mudaImage(_ sender: UISegmentedControl) {
        let index = self.segmentControlUnico.selectedSegmentIndex
        let imageView = getImageView(for: index)
       
        imageView.animationRepeatCount = 1
        imageView.animationDuration = 3
        imageView.animationImages = self.arrayImage
        
        imageView.startAnimating()
    }
    
    
    //MARK: - Methods
    func getImageView(for index: Int) -> UIImageView{
        return self.arrayImageView[index]
    }
    
}

