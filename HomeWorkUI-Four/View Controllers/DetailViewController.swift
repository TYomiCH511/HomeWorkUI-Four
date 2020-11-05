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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        user = StorageManager.shared.getUser()
        nameLabel.text = user.name
        suranmeLabel.text = user.surname
        
    }
    

    @IBAction func logOutPressed(_ sender: UIButton) {
        
        user.name = ""
        user.surname = ""
        user.login = ""
        user.password = ""
        StorageManager.shared.saveUser(self.user)
        dismiss(animated: true)
        
    }
    
}