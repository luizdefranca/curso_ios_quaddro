//
//  MyPlayerController.swift
//  CatchingVideo
//
//  Created by LuizRamos on 28/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import AVKit

class MyPlayerViewController: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Garante que a declaracao do objeto de outra classe se comunique
        objDeAcessoOutraViewController = self
    }
}
