//
//  ViewController + SelectPhoto.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/6/20.
//

import UIKit

extension ViewController {
    
    @objc func selectedPhoto(sender:UITapGestureRecognizer){
        
        user.userImageName = {
            switch sender.view?.tag {
            case 0: return "girl1"
            case 1: return "girl2"
            case 2: return "girl3"
            case 3: return "girl4"
            default:
                break
            }
            return ""
        }()
        
        imageViewUser.image = UIImage(named: user.userImageName)
        viewConstreant.constant = -700
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
}
