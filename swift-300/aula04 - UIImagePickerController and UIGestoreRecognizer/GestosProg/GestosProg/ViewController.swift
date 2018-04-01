//
//  ViewController.swift
//  GestosProg
//
//  Created by LuizRamos on 01/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var myView: UIView!
    
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Gesto Tap
        //No método inicializador, target indica qual objeto esta sendo tocado, e o action indica qual método será disparado
        let meuGestoTap = UITapGestureRecognizer(target: self, action: #selector(dispararGestoTap(_:)))
        
        meuGestoTap.numberOfTapsRequired = 2 //indica quantos taps serão necessários
        
        //Adiciona o gesto Tap à View
        myView.addGestureRecognizer(meuGestoTap)
        
        //Instancia um UISwipeGestureRecognizer com a acao dispararGestoSwipe
        let meuGestoSwipe = UISwipeGestureRecognizer(target: self, action: #selector(dispararGestoSwipe(_:)))
        
        //Configurando o gesto Swipe
        
        meuGestoSwipe.direction = .left //indica que o gesto será da direita  para esquerda
        meuGestoSwipe.numberOfTouchesRequired = 1 //indica quantos dedos serao necessários
        //Adicionar o gesto Swipe à View
        myView.addGestureRecognizer(meuGestoSwipe)
        
        //Instanciando um gesto Pan
        let meuGestoPan = UIPanGestureRecognizer(target: self, action: #selector(dispararPan(_:)))
        meuGestoPan.minimumNumberOfTouches = 2
        
        myView.addGestureRecognizer(meuGestoPan)
        
        
        //Instanciando um gesto Long Press
        let meuGestoLongPress = UILongPressGestureRecognizer(target: self, action: #selector(dispararLongPress(_:)))
        meuGestoLongPress.minimumPressDuration = 1.0
        
        myView.addGestureRecognizer(meuGestoLongPress)
        
        //Instanciando um gesto Rotation
        let meuGestoRotation = UIRotationGestureRecognizer(target: self, action: #selector(dispararRotation(_:)))
        //adiciona o delegate
        meuGestoRotation.delegate = self
        myView.addGestureRecognizer(meuGestoRotation)
        
        //Instanciando um gesto Pinch
        let meuGestoPinch = UIPinchGestureRecognizer(target: self, action: #selector(dispararGestoPinch(_:)))
        
        //adiciona o delegate
        meuGestoPinch.delegate = self
        myView.addGestureRecognizer(meuGestoPinch)
    }
    
   
    
    
    //MARK: - Actions
    
    //MARK: - Methods

    @objc func dispararGestoTap(_ gestoTap : UITapGestureRecognizer){
        print("Gesto Tap")
    }
    
    @objc func dispararGestoSwipe(_ gestoSwipe: UISwipeGestureRecognizer){
        print("Gesto Swipe")
    }
    
    @objc func dispararPan(_ gestoPan: UIPanGestureRecognizer){
        print("Gesto Pan")
        
        let posicao = gestoPan.location(in: self.view)
        print("X : \(posicao.x)", "Y : \(posicao.y)")
        myView.center = posicao
    }
    
    @objc func dispararLongPress(_ gestoLongPress : UILongPressGestureRecognizer){
        
        if gestoLongPress.state == .began {
            print("Gesto Long Press")
        }
        
    }
    
    @objc func dispararRotation (_ gestoRotation : UIRotationGestureRecognizer){
        print("Gesto Rotation")
        
        
        // O .view representa a view do objeto de gesto
        // .transform é todo o conjunto de alteração do objeto (transformada - algebra linear) composto por: rotacao, posição e escala(tamanho).
        gestoRotation.view?.transform = gestoRotation.view!.transform.rotated(by: gestoRotation.rotation)
        
        //Quando soltarmos o objeto na sua nova posicao, a rotacao zero fixará um novo ponto de referência
        gestoRotation.rotation = 0
    }
    
    @objc func dispararGestoPinch(_ gestoPinch : UIPinchGestureRecognizer){
        
        print("Gesto Pinch")
        print(gestoPinch.scale)
        gestoPinch.view?.transform = gestoPinch.view!.transform.scaledBy(x: gestoPinch.scale, y: gestoPinch.scale)
        
        gestoPinch.scale = 1
    }
}

extension ViewController : UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        
        return true
    }
}
