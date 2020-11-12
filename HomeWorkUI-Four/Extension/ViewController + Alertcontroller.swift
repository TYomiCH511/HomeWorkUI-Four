//
//  ViewController + Alertcontroller.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import UIKit

extension UIImageView {
    func chekLogoAnimateFail() {
        self.image = #imageLiteral(resourceName: "back")
        self.alpha = 1
    
        UIView.animate(withDuration: 2) {
            self.alpha = 0
            
        }
    }
    
    func chekLogoAnimateTrue() {
        self.image = #imageLiteral(resourceName: "clear")
        self.alpha = 1
    
    }
    
}
