//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Yuriy on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let username = "ios"
    let password = "222"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greeting = "Hi, \(username)!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
        if usernameTF.text != username || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password 😎",
                message: "Please, enter correct login and password"
            )
        }
        passwordTF.text = ""
    }
    
    @IBAction func hintUserName() {
        showAlert(title: "Hey there 👋", message: "Your name: \(username)")
    }
    
    @IBAction func hintPassword() {
        showAlert(title: "Hey there 👋", message: "Your password: \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

