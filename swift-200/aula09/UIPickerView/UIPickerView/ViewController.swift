//
//  ViewController.swift
//  UIPickerView
//
//  Created by Swift on 30/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   

    // MARK: - IBOutlets
    
    @IBOutlet weak var meuPickerView: UIPickerView!
    
    // MARK: - Propriedades
    
    var arrayNomes = ["Felipe", "Lilica", "Josefina", "Garibaldo"]
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.meuPickerView.delegate = self
        self.meuPickerView.dataSource = self
        
        //
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func selecionar(_ sender: UIButton) {
        self.meuPickerView.selectRow(3, inComponent: 0, animated: true)
    }
    // MARK: - Métodos
    
    // MARK: - Métodos de UIPickerViewDatasource
    
    // Define a quantidade de colunas que teremos no pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    //Define a quantidade de linhas que se tem para cada component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return self.arrayNomes.count
    }
    
    // MARK: - Métodos de UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //regatando o nome para a respectiva linha
        let nome = self.arrayNomes[row]
        
        //devolvendo o nome
        return nome
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Disparou! \(self.arrayNomes[row])")
    }

}





