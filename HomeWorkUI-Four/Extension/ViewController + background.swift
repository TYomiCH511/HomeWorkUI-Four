//
//  backgroundSet.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/8/20.
//

import UIKit

extension ViewController {
    
func dark() {
    view.backgroundColor = .gray
    
    nameTextField.isHidden = true
    surnameTextField.isHidden = true
    loginTextField.isHidden = true
    passwordTextField.isHidden = true
    registrationBurtton.isHidden = true
}

    func light() {
        view.backgroundColor = UIColor(red: 229 / 255, green: 229 / 255, blue: 234 / 255, alpha: 1)
        nameTextField.isHidden = false
        surnameTextField.isHidden = false
        loginTextField.isHidden = false
        passwordTextField.isHidden = false
        registrationBurtton.isHidden = false
    }
}
