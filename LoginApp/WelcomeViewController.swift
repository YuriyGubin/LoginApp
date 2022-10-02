//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = greeting
    }

    @IBAction func logoutButtonTapped() {
    }
}
