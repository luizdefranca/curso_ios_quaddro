//
//  AroundedUIView.swift
//  AluraViagens
//
//  Created by LuizRamos on 11/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class AroundedUIView: UIView {

    
    

}


extension AroundedUIView{
        @IBInspectable
    var cornerRadius: CGFloat{
            get{
                return layer.cornerRadius
            }
            set{
                layer.cornerRadius = newValue
            }
    }
}
