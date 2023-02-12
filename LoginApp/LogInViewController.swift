//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Yuriy on 12.02.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "123"
    private let password = "123"

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text ?? ""
    }

    @IBAction func logInButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                withTitle: "Wrong User Name or Password 😎",
                andMessage: "Enter correct User Name and Password, please!"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(
            withTitle: "Your User Name is: \(userName)",
            andMessage: "Remember this already, please!"
        )
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(
            withTitle: "Your Password is: \(password)",
            andMessage: "Remember this already, please!"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is GreetingViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

