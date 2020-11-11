//
//  DetailViewController.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    private var user = User()
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var suranmeLabel: UILabel!
    @IBOutlet var imageViewUserDetail: UIImageView!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = StorageManager.shared.getUser()
        nameLabel.text = user.name
        suranmeLabel.text = user.surname
        
        imageViewUserDetail.image = UIImage(named: user.userImageName)
        
    }
    
    @IBAction func logOutPressed(_ sender: UIButton) {
        
        StorageManager.shared.deleteUser(&user)
        StorageManager.shared.saveUser(user)
        
        dismiss(animated: true)
    }
    
}
