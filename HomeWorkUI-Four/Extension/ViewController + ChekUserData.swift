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
                      password: UITextField,
                      chekLogo: [UIImageView]) {
        
        if name.text!.isEmpty || surname.text!.isEmpty
            || login.text!.isEmpty || password.text!.isEmpty {
//            callAlertController(with: "Attention", message: "Please enter all text field")
            
            if name.text!.isEmpty {
                chekLogo[0].image = #imageLiteral(resourceName: "back")
                chekLogo[0].alpha = 1
            
                UIView.animate(withDuration: 2) {
                    chekLogo[0].alpha = 0
                    
                }
                
            } else {
                chekLogo[0].image = #imageLiteral(resourceName: "clear")
                chekLogo[0].alpha = 1
            }
            
            if surname.text!.isEmpty {
                chekLogo[1].image = #imageLiteral(resourceName: "back")
                
                chekLogo[1].alpha = 1
                
                UIView.animate(withDuration: 2) {
                    chekLogo[1].alpha = 0
                    
                }
            } else {
                chekLogo[1].image = #imageLiteral(resourceName: "clear")
                
                chekLogo[1].alpha = 1
                
                
            }
            
            if login.text!.isEmpty {
                
                chekLogo[2].image = #imageLiteral(resourceName: "back")
                chekLogo[2].alpha = 1
                
                UIView.animate(withDuration: 2) {
                    chekLogo[2].alpha = 0
                    
                }
            } else {
                chekLogo[2].image = #imageLiteral(resourceName: "clear")
                chekLogo[2].alpha = 1
            }
            
            if password.text!.isEmpty {
                chekLogo[3].image = #imageLiteral(resourceName: "back")
                chekLogo[3].alpha = 1
                
                UIView.animate(withDuration: 2) {
                    chekLogo[3].alpha = 0
                    
                }
            } else {
                chekLogo[3].image = #imageLiteral(resourceName: "clear")
                chekLogo[3].alpha = 1
            }
            
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
            for image in chekUserDataIcon {
                image.alpha = 0
            }
            goToDetailVC()
        }
    }
    
    
    func goToDetailVC() {
        performSegue(withIdentifier: "detail", sender: nil)
    }
}
