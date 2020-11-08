//
//  ConfigureViewController.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/6/20.
//

import UIKit
extension ViewController {
    
    func configurePhotoCollection() {
        
        for image in photoCollection {
            let tapGestur = UITapGestureRecognizer(target: self, action: #selector(selectedPhoto))
            image.isUserInteractionEnabled = true
            image.addGestureRecognizer(tapGestur)
        }
    }
    
    func choosePhotoTap() {
        viewConstreant.constant = -100
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
}
