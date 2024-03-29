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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.userInfo = user
            } else if let aboutMeVC = viewController as? UINavigationController {
                guard let aboutVC = aboutMeVC.topViewController as? AboutMeViewController else { return }
                aboutVC.userInfo = user
            }
        }
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Wrong Login or Password 😎",
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
            withTitle: "Your Login is: \(user.login)",
            andMessage: "Remember this already, please!"
        )
        : showAlert(
            withTitle: "Your Password is: \(user.password)",
            andMessage: "Remember this already, please!"
        )
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

