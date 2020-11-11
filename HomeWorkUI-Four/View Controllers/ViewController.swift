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
    
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePhotoCollection()
        
        imageViewUser.layer.cornerRadius = imageViewUser.frame.height / 2
    }
    
    @IBAction func registrationPressed(_ sender: UIButton) {
        chekUserData(name: nameTextField,
                     surname: surnameTextField,
                     login: loginTextField,
                     password: passwordTextField)
    }
    
    
    
    @IBAction func pressChoosePhoto(_ sender: UITapGestureRecognizer) {
        choosePhotoTap()
    }
    
}

