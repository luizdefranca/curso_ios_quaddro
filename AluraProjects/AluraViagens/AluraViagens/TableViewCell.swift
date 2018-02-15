//
//  TableViewCell.swift
//  AluraViagens
//
//  Created by LuizRamos on 12/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var quantidadeDiasLabel: UILabel!
    
    @IBOutlet weak var precoLabel: UILabel!
    
    @IBOutlet weak var viagemImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
