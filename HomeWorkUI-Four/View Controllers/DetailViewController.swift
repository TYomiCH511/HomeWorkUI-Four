//
//  DetailViewController.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    
    
    internal var user = User()
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var suranmeLabel: UILabel!
    @IBOutlet var imageViewUserDetail: UIImageView!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        user = StorageManager.shared.getUser()
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        nameLabel.text = user.name
        
        if user.age != "" {
            suranmeLabel.text = user.surname + ","
        } else {
            suranmeLabel.text = user.surname
        }
        
        countryLabel.text = user.country
        ageLabel.text = user.age
        aboutLabel.text = user.aboutYourself
        imageViewUserDetail.image = UIImage(named: user.userImageName)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.name
        
        if user.age != "" {
            suranmeLabel.text = user.surname + ","
        } else {
            suranmeLabel.text = user.surname
        }
        
        countryLabel.text = user.country
        ageLabel.text = user.age
        aboutLabel.text = user.aboutYourself
        imageViewUserDetail.image = UIImage(named: user.userImageName)
        
    }
    
    @IBAction func logOutPressed(_ sender: UIButton) {
        
        StorageManager.shared.deleteUser(&user)
        StorageManager.shared.saveUser(user)
        
        dismiss(animated: true)
    }
    
    
    
}
