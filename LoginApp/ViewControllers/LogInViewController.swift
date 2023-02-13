//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Yuriy on 12.02.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "123"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userName
        passwordTF.text = password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text ?? ""
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Wrong User Name or Password 😎",
                andMessage: "Enter correct User Name and Password, please!",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotDataButtonsPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(
            withTitle: "Your User Name is: \(userName)",
            andMessage: "Remember this already, please!"
        )
        : showAlert(
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

// MARK: - Set Alert
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
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

