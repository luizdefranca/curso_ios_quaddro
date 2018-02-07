//
//  ViewController.swift
//  PickerViewComMaisColunas
//
//  Created by LuizRamos on 31/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var pickerViewUnico: UIPickerView!
    //MARK: - Proprieties
    
    var arrayNomes = ["Felipe", "Lilica", "Josefina", "Garibaldi"]
    
    var arraySobrenomes = ["Martins", "Garibaldino", "Lilico"]
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerViewUnico.delegate = self
        self.pickerViewUnico.dataSource = self
    }
    
    //MARK: - Actions
    
    //MARK: - Methods


}

//Criando a extensao apenas para organização
extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        //verifica se estamos na coluna )
        if component == 0{
            //caso sim retorna os elementos do arrayNome
            return self.arrayNomes.count
        }else {
            //caso nao retorna os elementos do arraySobrenome
        
            return self.arraySobrenomes.count
        }
    }
    
    
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return self.arrayNomes[row]
        }else{
            return self.arraySobrenomes[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("component: \(component) row: \(row)")
    }
    
}

