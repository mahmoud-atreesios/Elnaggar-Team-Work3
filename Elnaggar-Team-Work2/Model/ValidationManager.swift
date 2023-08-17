//
//  ValidationManager.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import Foundation

class ValidationManager{
    
    private static let sharedInstance = ValidationManager()
    
    static func shared() -> ValidationManager{
        return ValidationManager.sharedInstance
    }
    
     func isValidEmail(email: String) -> Bool {
         guard !email.trimm.isEmpty else {
             return false
         }
        let pattern = RegexContsants.email
        let regex = try? NSRegularExpression(pattern: pattern)
        let range = NSRange(location: 0, length: email.utf16.count)
        return regex?.firstMatch(in: email, options: [], range: range) != nil
    }
    
     func isValidPassword(password: String) -> Bool {
         guard !password.trimm.isEmpty else {
             return false
         }
        if password.count < 6 {
            return false
        }
        return true
        
    }

}
