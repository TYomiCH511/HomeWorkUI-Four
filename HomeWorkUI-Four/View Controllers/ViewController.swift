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
    
    @IBOutlet var viewConstreant: NSLayoutConstraint!
    private var user = User()
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        user = StorageManager.shared.getUser()
        if user.name != "" && user.surname != "" {
            goToDetailVC()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func registrationPressed(_ sender: UIButton) {
        
        if nameTextField.text!.isEmpty || surnameTextField.text!.isEmpty
            || loginTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            callAlertController(with: "Attention", message: "Please enter all text field")
            
        } else {
            user.name = nameTextField.text!
            user.surname = surnameTextField.text!
            user.login = loginTextField.text!
            user.password = passwordTextField.text!
            
            StorageManager.shared.saveUser(user)
            
            nameTextField.text = nil
            surnameTextField.text = nil
            loginTextField.text = nil
            passwordTextField.text = nil
        }
        
        goToDetailVC()
        
    }
    
    
    func choosePhotoTap() {
        viewConstreant.constant = -100
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
    }
        
        
        
    }
    
    @IBAction func pressChoosePhoto(_ sender: UITapGestureRecognizer) {
        choosePhotoTap()
    }
    
    
    
    func goToDetailVC() {
        performSegue(withIdentifier: "detail", sender: view.self)
    }
}

