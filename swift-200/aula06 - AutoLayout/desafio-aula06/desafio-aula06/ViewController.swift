//
//  ViewController.swift
//  desafio-aula06
//
//  Created by LuizRamos on 23/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    @IBOutlet weak var labelScreen: UILabel!
    
    //MARK: - Proprieties
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - Actions
    @IBAction func put0(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    
    @IBAction func putDot(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put1(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put2(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put3(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put4(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put5(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put6(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put7(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put8(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    @IBAction func put9(_ sender: UIButton) {
        if let value = sender.currentTitle{
            addNumberToScreen(selectedButton: value)
        }
    }
    
    
    @IBAction func clearScreen(_ sender: UIButton) {
        self.labelScreen.text = "0"
    }
    
    //MARK: - Metods
    func addNumberToScreen(selectedButton : String){
        if var textNumber = self.labelScreen?.text{
            if numberAreZero(numberInScreen: textNumber, numberInButton: selectedButton){
                return
            } else if numberInScreenIsZero(numberInScreen: textNumber){
                textNumber = ""
                textNumber += selectedButton
                self.labelScreen.text = textNumber
            } else if thereIsADot(numberInScreen: textNumber) && selectedIsDot(numberInButton: selectedButton){
                return
            } else {
                textNumber += selectedButton
                self.labelScreen.text = textNumber
            }
        }
    }

    
    func numberAreZero( numberInScreen : String,  numberInButton : String) -> Bool {
        return numberInScreen == "0" && numberInButton == "0"
    }
    func numberInScreenIsZero(numberInScreen : String) -> Bool {
        return numberInScreen == "0"
    }
    
    func thereIsADot(numberInScreen : String) -> Bool{
        return numberInScreen.contains(".")
    }
    
    func selectedIsDot(numberInButton: String) -> Bool {
        return numberInButton == "."
    }
}

