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
    
    private let username = "ios"
    private let password = "222"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greeting = username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped() {
        
        guard usernameTF.text == username, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password 😎",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtons(_ sender: UIButton) {
        
        sender.tag == 0
        ? showAlert(title: "Hey there! 👋", message: "Your name: \(username)")
        : showAlert(title: "Hey there! 👋", message: "Your password: \(password)")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

