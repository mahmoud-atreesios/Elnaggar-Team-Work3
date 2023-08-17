//
//  SecondVC.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        UserDefaultsManager.shared().logoutUser()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginScreen = (sb.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC)!
        //self.present(loginScreen, animated: true)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = loginScreen
        
    }
}
