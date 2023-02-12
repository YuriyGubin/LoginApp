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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.userName = userNameTF.text ?? ""
    }

    @IBAction func logInButtonPressed() {
    }
    
    @IBAction func forgotUserNameButtonPressed() {
    }
    
    @IBAction func forgotPasswordButtonPressed() {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is GreetingViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

