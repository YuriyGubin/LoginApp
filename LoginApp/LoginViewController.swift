//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Yuriy on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    let username = "swift"
    let password = "12345"
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBAction func loginButtonTapped() {
        if usernameTF.text != username || passwordTF.text != password {
            showAlert(title: "Invalid login or password", message: "Enter correct login and password")
        }
        passwordTF.text = ""
    }
    
    @IBAction func hintUserName() {
        showAlert(title: "Hey there 👋", message: "Your name: \(username)")
    }
    
    @IBAction func hintPassword() {
        showAlert(title: "Hey there 👋", message: "Your password: \(password)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

