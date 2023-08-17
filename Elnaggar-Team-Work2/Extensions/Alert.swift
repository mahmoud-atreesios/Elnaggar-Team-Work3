//
//  Alert.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import Foundation
import UIKit

extension UIViewController{
    func showAlert(title: String,message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .default))
        self.present(alert, animated: true)
    }
}
