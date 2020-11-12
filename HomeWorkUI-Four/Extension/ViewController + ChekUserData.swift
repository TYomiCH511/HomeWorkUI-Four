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
            
            
            name.text!.isEmpty ? chekLogo[0].chekLogoAnimateFail() : chekLogo[0].chekLogoAnimateTrue()
            surname.text!.isEmpty ? chekLogo[1].chekLogoAnimateFail() : chekLogo[1].chekLogoAnimateTrue()
            login.text!.isEmpty ? chekLogo[2].chekLogoAnimateFail() : chekLogo[2].chekLogoAnimateTrue()
            password.text!.isEmpty ? chekLogo[3].chekLogoAnimateFail() : chekLogo[3].chekLogoAnimateTrue()
            
            
            
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
