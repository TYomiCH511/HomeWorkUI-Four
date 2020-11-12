//
//  ViewController + Chek login.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/10/20.
//

import Foundation

extension ViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        user = StorageManager.shared.getUser()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if user.isLogin == true {
            goToDetailVC()
        }
    }
    
    
}
