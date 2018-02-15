//
//  CollectionViewController.swift
//  CelulaCustomizadaDaCollectionView
//
//  Created by LuizRamos on 02/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "celulaBoladona")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaBoladona", for: indexPath) as! CollectionViewCell
    
        // Configure the cell
    
        cell.labelUnica.text = "Funcionou"
        return cell
    }

    

}
