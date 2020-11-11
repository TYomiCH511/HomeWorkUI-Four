//
//  ChekUserData.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/6/20.
//

import UIKit
extension ViewController {
    
    func chekUserData(name: UITextField,
                      surname: UITextField,
                      login: UITextField,
                      password: UITextField) {
        if name.text!.isEmpty || surname.text!.isEmpty
            || login.text!.isEmpty || password.text!.isEmpty {
            callAlertController(with: "Attention", message: "Please enter all text field")
            
            
            
            
        } else {
            user.name = name.text!
            user.surname = surname.text!
            user.login = login.text!
            user.password = password.text!
            user.isLogin = true
            StorageManager.shared.saveUser(user)
            
            imageViewUser.image = #imageLiteral(resourceName: "choosePhoto")
            name.text = nil
            surname.text = nil
            login.text = nil
            password.text = nil
            
            goToDetailVC()
        }
        
        
    }
    
    
    func goToDetailVC() {
        performSegue(withIdentifier: "detail", sender: view.self)
        
    }
}
