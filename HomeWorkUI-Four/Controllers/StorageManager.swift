//
//  StorageManager.swift
//  HomeWorkUI-Four
//
//  Created by Artem on 11/5/20.
//

import Foundation


class StorageManager {
    
    static let shared = StorageManager()
    
    private var user = User()
    private let defaults = UserDefaults.standard
    private let keyUser = "savedUser"
    
    func getUser() -> User {
        if let savedUser = defaults.object(forKey: keyUser) as? Data {
            if let loadedUser = try? JSONDecoder().decode(User.self, from: savedUser) {
              user = loadedUser
                print(#function)
            }
            
        }
        return user
    }
    func saveUser(_ user: User) {
        guard let userEncoded = try? JSONEncoder().encode(user) else { return }
        defaults.set(userEncoded, forKey: keyUser)
    }
    
    func deleteUser(_ user: inout User) {
        user.name = ""
        user.surname = ""
        user.login = ""
        user.password = ""
        user.userImageName = "defaultFoto"
        user.isLogin = false
    }
}
