//
//  ViewController.swift
//  Desafio-Aula13
//
//  Created by LuizRamos on 07/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var collectionViewFirst: UICollectionView!
    
    @IBOutlet weak var collectionViewSecond: UICollectionView!
    
    @IBOutlet weak var collectionViewThird: UICollectionView!
    
    //MARK: - Proprieties
    
    var arrayUpImage : Array<UIImage> = []
    
    var arrayMidleImage : Array<UIImage> = []
    
    var arrayDownImage : Array<UIImage> = []
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillImageArray(For: &arrayUpImage, with: 9, name: "Swift1")
        self.fillImageArray(For: &arrayMidleImage, with: 8, name: "Swift2")
        self.fillImageArray(For: &arrayDownImage, with: 9, name: "Swift3")
        print(arrayUpImage)
        print(arrayMidleImage)
        print(arrayDownImage)
    }
    
    //MARK: - Actions
    
    //MARK: - Methods

    func setup(){
        self.collectionViewFirst.dataSource = self
        self.collectionViewSecond.dataSource = self
        self.collectionViewThird.dataSource = self
        
        self.collectionViewFirst.delegate = self
        self.collectionViewSecond.delegate = self
        self.collectionViewThird.delegate = self
    }

    func fillImageArray(For array: inout [UIImage], with numberOfElements: Int, name: String){
        for i in 1...numberOfElements{
            let image = UIImage(named: "\(name)_\(i)")
            if let imageTemp = image{
                array.append(imageTemp)
            }
        }
    }
}

extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
    
    
}

extension ViewController : UICollectionViewDelegate{
    
}
