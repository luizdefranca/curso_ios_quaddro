//
//  CollectionViewController.swift
//  UiCollectionViewController
//
//  Created by LuizRamos on 02/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

private let reuseIdentifier = "celula"

class CollectionViewController: UICollectionViewController {

    //MARK: Array de objetos
    var arrayElementos1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var arrayElementos2 = [1, 2, 3, 4, 5, 6, 7, 8]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        if section == 0{
            return self.arrayElementos1.count
        } else {
            return self.arrayElementos2.count
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.width, height: cell.bounds.width))
        label.textAlignment = .center
        
        if (indexPath.section == 0){
            label.text = "\(self.arrayElementos1[indexPath.item])"
        } else {
            label.text = "\(self.arrayElementos2[indexPath.item])"
        }
        cell.addSubview(label)
        
        return cell
    }

    // MARK: UICollectionViewDelegate

   
}
