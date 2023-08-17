//
//  AppDelegate.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//


//a7777aaaa
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if let isLoggedIn = UserDefaults.standard.object(forKey: UserDefaultsKeys.isLoggedIn) as? Bool{
            print(isLoggedIn)
            if isLoggedIn{
                // go to Second screen
                setSecondScreenToBeRoot()

            }else{
                // go to login screen
                setLoginScreenToBeRoot()
            }
        }

        return true
    }
    
    func setLoginScreenToBeRoot(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginScreen = sb.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        self.window?.rootViewController = UINavigationController(rootViewController: loginScreen!)
    }
    
    func setSecondScreenToBeRoot(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let tableViewScreen = sb.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        self.window?.rootViewController = UINavigationController(rootViewController: tableViewScreen!)
    }
    
}



