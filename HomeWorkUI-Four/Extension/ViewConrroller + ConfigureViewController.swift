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
        viewConstreant.constant = -50
        
        dark()
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if viewConstreant.constant == -50 {
            viewConstreant.constant = -700
            
            light()
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
    }
}
