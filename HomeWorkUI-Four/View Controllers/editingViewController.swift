//
//  editingViewController.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/11/20.
//

import UIKit

class editingViewController: UIViewController {
    
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var surnameTextField: UITextField!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var aboutYourselfTextView: UITextView!
    
    var user = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = StorageManager.shared.getUser()
        photoView.image = UIImage(named: user.userImageName)
        nameTextField.text = user.name
        surnameTextField.text = user.surname
        
        if user.country == "" {
            countryTextField.placeholder = "Country"
        } else {
            countryTextField.text = user.country
        }
        
        if user.age == "" {
            ageTextField.placeholder = "Age"
        } else {
            ageTextField.text = user.age
        }
        
        if user.aboutYourself == "" {
            aboutYourselfTextView.text = "About yourself"
        } else {
            aboutYourselfTextView.text = user.aboutYourself
        }
        
        photoView.layer.cornerRadius = photoView.frame.width / 2
        aboutYourselfTextView.delegate = self
    }
    
    @IBAction func pressedCloseEditingMenu(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pressedDoneButton(_ sender: UIButton) {
        user.name = nameTextField.text ?? user.name
        user.surname = surnameTextField.text ?? user.surname
        user.age = ageTextField.text ?? user.age
        user.country = countryTextField.text ?? user.country
        user.aboutYourself = aboutYourselfTextView.text ?? user.aboutYourself
        
        StorageManager.shared.saveUser(user)
        
        dismiss(animated: true, completion: nil)
    }
}


extension editingViewController: UITextViewDelegate {
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("hello")
        if aboutYourselfTextView.text == "About yourself" {
            aboutYourselfTextView.text = ""
            aboutYourselfTextView.textColor = .black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if aboutYourselfTextView.text == "" {
            aboutYourselfTextView.text = "About yourself"
            aboutYourselfTextView.textColor = .lightGray
        }
    }
}


