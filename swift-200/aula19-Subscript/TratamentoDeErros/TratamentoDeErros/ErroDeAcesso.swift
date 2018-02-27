//
//  ErroDeAcesso.swift
//  TratamentoDeErros
//
//  Created by LuizRamos on 15/02/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation

enum ErroDeAcesso: Error {
    
    case loginOuSenhaErrados
    case senhaErrada
    case loginErrado

}


