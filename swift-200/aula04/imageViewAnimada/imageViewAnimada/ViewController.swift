//
//  ViewController.swift
//  imageViewAnimada
//
//  Created by LuizRamos on 19/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var imageViewUnica: UIImageView!
    
    //MARK: - Proprieties
    var arrayImage : Array<UIImage> = []
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Criando um for para popular o array
        for i in 0...39 {
            //criando o nome da imagem que usaremos para nosso array
            let nomeImagem = "imagem_\(i)"
            let imagem = UIImage(named: nomeImagem)
            if let imagem = imagem{
                self.arrayImage.append(imagem)
            }
        }
    }
    
    //MARK: - Actions
    @IBAction func animar(_ sender: UIButton) {
        //propriedade que controla a velocidade que a animacao será demonstrada
        self.imageViewUnica.animationDuration = 5.0
        
        //propriedade que controla a quantidade de repetições da animacao, caso seja zero será infinito
        self.imageViewUnica.animationRepeatCount = 0
        
        //propriedade que define o objeto que fornecerá as imagens para a animação
        self.imageViewUnica.animationImages = self.arrayImage
        
        //propriedade que define a última imagem a ser exibida, imagem da ImageView
        
        self.imageViewUnica.image = self.arrayImage[39]
        
        //método que inicia a animacao
        self.imageViewUnica.startAnimating()
        
    }
    
    //MARK: - Methods
   


}

