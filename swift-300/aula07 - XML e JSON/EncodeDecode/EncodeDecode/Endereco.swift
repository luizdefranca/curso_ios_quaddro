//
//  Classe.swift
//  EncodeDecode
//
//  Created by LuizRamos on 07/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import Foundation
/*
O protocolo codable adiciona a uma struct ou class a capacidade de incorporar ou externar dados no formato JSON
 
*/

struct Endereco : Codable {
   
    //Propriedades
    var cep : String
    var logradouro : String
    var complemento : String
    var bairro : String
    var localidade : String
    var uf : String
    
    
}
