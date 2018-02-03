//
//  ViewController.swift
//  CollectionView
//
//  Created by LuizRamos on 02/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: - Proprieties
    
    let array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    //MARK: - Actions
    
    //MARK: - Methods
    func setup(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

}

extension ViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Cria uma célula
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celula" , for: indexPath)
        
        //Cria uma label
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.width, height: cell.bounds.height))
        label.textAlignment = .center
        label.text = "\(array[indexPath.item])"
        
        cell.addSubview(label)
        
        return cell
    }
}

extension ViewController : UICollectionViewDelegate{
    
}
