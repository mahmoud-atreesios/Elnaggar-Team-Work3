//
//  Constants.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import Foundation

struct UserDefaultsKeys{
    static let email = "savedEmail"
    static let password = "savedPassword"
    static let isLoggedIn = "isLoggedIn"
}

struct RegexContsants{
    static let email = "^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z]{2,})+$"
}
