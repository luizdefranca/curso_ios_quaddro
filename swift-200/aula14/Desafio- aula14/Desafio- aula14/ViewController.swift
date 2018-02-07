//
//  ViewController.swift
//  Desafio- aula14
//
//  Created by LuizRamos on 06/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var labelX: UILabel!
    
    @IBOutlet weak var labelY: UILabel!
    
    @IBOutlet weak var imageViewUnica: UIImageView!
    
    
    //MARK: - Proprieties
    
    var toque = UITouch()  //criando nossa variável que recebera os toques
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageViewUnica.isUserInteractionEnabled = true //habilita a imageViewUnica a responder a eventos, isto também pode ser habilitado no storyBoard
    }
    
    //MARK: - Actions
    
    //MARK: - Methods
    
    //MARK: - UITouch Methods
    
    /**
     Método que é disparado quando um toque é iniciado
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let toqueTemp = touches.first{
            self.toque = toqueTemp
        }
        print(self.toque.view)
        if self.toque.view == imageViewUnica{
        let carinhaBrava = UIImage(named: "bravo") //criando a referência para a nossa imagem
        self.imageViewUnica.image = carinhaBrava //atribuindo a imagem para a nossa imageViewUnica
        }
    }
    
    /**
     Método que é disparado quando um toque é movido
     */
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let toqueTemp = touches.first{
            self.toque = toqueTemp
        }
        
        //criando um CGPoint para receber a posição tocada na View
        let posicaoTocada = toque.location(in: self.view)
        
        //colando a posição nas labels
        self.labelX.text = "\(posicaoTocada.x)"
        self.labelY.text = String(format: "%2.f", posicaoTocada.y) //formatando uma string conforme uma saída ao estilo linguagem C
        
        //verificando se o objeto foi tocado
        if self.toque.view == self.imageViewUnica{
        
            /*
                //Duvida
             //Para limitar o movimento do objeto
             if posicaoTocada.x > 300 {
                return
             }
 
             */
            
            self.imageViewUnica.center = posicaoTocada
            if posicaoTocada.x > self.view.bounds.size.width/2
            {
                self.view.backgroundColor = UIColor.yellow
            } else {
                self.view.backgroundColor = UIColor.white
            }
        }
    }

    /**
     Método que é disparado quando um toque é finalizado
     */
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let toqueTemp = touches.first{
            self.toque = toqueTemp
        }
        if self.toque.view == imageViewUnica{
        let carinhaFeliz = UIImage(named: "feliz")// criando a referencia para a nossa imagem
        self.imageViewUnica.image = carinhaFeliz // atribuindo a image a nossa imageView
        }
    }
}

