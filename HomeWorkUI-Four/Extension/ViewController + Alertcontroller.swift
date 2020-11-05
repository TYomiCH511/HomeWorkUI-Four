//
//  ViewController + Alertcontroller.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import UIKit

extension ViewController {
    
    func callAlertController(with title: String, message: String) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(ok)
        present(alertController, animated: true, completion: nil)
        
    }
}
