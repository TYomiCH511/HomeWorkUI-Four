//
//  ViewController.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var surnameTextField: UITextField!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var imageViewUser: UIImageView!
    @IBOutlet var collectionGirlView: UIView!
    @IBOutlet var registrationBurtton: UIButton!
    
    @IBOutlet var photoCollection: [UIImageView]!
    @IBOutlet var viewConstreant: NSLayoutConstraint!
    
    @IBOutlet var chekUserDataIcon: [UIImageView]!
    
    
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePhotoCollection()
        
        imageViewUser.layer.cornerRadius = imageViewUser.frame.height / 2
        
        print("Hello!!")
        
        for image in chekUserDataIcon {
            image.alpha = 0
        }
    }
    
    @IBAction func registrationPressed(_ sender: UIButton) {
        chekUserData(name: nameTextField,
                     surname: surnameTextField,
                     login: loginTextField,
                     password: passwordTextField,
                     chekLogo: chekUserDataIcon)
    }
    
    
    
    @IBAction func pressChoosePhoto(_ sender: UITapGestureRecognizer) {
        choosePhotoTap()
    }
    
}

