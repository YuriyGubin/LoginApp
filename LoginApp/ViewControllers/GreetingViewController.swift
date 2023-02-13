//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Yuriy on 12.02.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    private let firstColor = #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1)
    private let secondColor = #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1)
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
        greetingLabel.text = "Welcome, \(userInfo.person.fullName)!"
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}


