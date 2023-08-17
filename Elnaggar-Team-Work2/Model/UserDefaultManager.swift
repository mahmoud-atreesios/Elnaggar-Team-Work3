//
//  UserDefaultManager.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import Foundation

struct UserDefaultsManager{
    private static let sharedInstance = UserDefaultsManager()
    
    static func shared() -> UserDefaultsManager{
        return UserDefaultsManager.sharedInstance
    }
    
    private init() {}
    
    func setIsLoggedIn(_ isLoggedIn: Bool){
        
        let def = UserDefaults.standard
        def.set(isLoggedIn, forKey: UserDefaultsKeys.isLoggedIn)
        
    }
    
    func getIsLoggedIn() -> Bool?{
        let def = UserDefaults.standard
        if let isLoggedIn = def.object(forKey: UserDefaultsKeys.isLoggedIn) as? Bool{
            if isLoggedIn{
                return true
            }
            return false
        }
        return nil
    }
        
    func logoutUser() {
        UserDefaults.standard.set(false, forKey: UserDefaultsKeys.isLoggedIn)
        UserDefaults.standard.removeObject(forKey: "loggedInUser")
    }
    
}
