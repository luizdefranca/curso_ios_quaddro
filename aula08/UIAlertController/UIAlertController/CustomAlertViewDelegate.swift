//
//  CustomAlertViewDelegate.swift
//  UIAlertController
//
//  Created by LuizRamos on 29/01/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

protocol CustomAlertViewDelegate {
    func okButtonTapped(selectedOption: String, textFieldValue: String)
    func cancelButtonTapped()
}
