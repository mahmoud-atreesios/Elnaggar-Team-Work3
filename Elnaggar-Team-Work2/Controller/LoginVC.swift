//
//  FirstVC.swift
//  Elnaggar-Team-Work2
//
//  Created by Mahmoud Mohamed Atrees on 17/08/2023.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    var isPasswordVisible = false
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setDelegate()
        setBorderRadius()
        
        loginButton.isEnabled = false
    }
    @IBAction func usernameStartTyping(_ sender: UITextField) {
        checkFields()
    }
    
    @IBAction func passwordStartTyping(_ sender: UITextField) {
        checkFields()
    }
    
    func setDelegate(){
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func setBorderRadius(){
        usernameTextField.layer.borderColor = UIColor.black.cgColor
        usernameTextField.layer.borderWidth = 1.0
        usernameTextField.layer.cornerRadius = 10
        usernameTextField.layer.masksToBounds = true
        
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        passwordTextField.layer.borderWidth = 1.0
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.layer.masksToBounds = true
    }
    
    @IBAction func hideShowPassword(_ sender: UIButton) {
        
        isPasswordVisible = !isPasswordVisible
        passwordTextField.isSecureTextEntry = !isPasswordVisible
        if isPasswordVisible {
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }
    }
    
    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .white
        } else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .darkGray
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        checkCredentials(email: usernameTextField.text, password: passwordTextField.text)
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "CourseViewController") as! CourseViewController
        navigationController?.pushViewController(secondVC, animated: true)
        UserDefaultsManager.shared().setIsLoggedIn(true)
    }
    
    func checkCredentials(email: String?, password: String?){
        guard ValidationManager.shared().isValidEmail(email: email!) else {
            showAlert(title: "Error!", message: "Email is Not Valid")
            return
        }
        guard ValidationManager.shared().isValidPassword(password: password!) else{
            showAlert(title: "Error!", message: "password is Not Valid")
            return
        }
    }
    
    func checkFields(){
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        if username != "" && password != ""{
            loginButton.isEnabled = true
            loginButton.alpha = 1
        }else{
            loginButton.isEnabled = false
            loginButton.alpha = 0.5
        }
    }
    
}


