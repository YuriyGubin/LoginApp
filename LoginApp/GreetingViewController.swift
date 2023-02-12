//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Yuriy on 12.02.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    
    @IBOutlet var greetingLabel: UILabel!
    
    private var gradient: CAGradientLayer = {
        
        let gradient = CAGradientLayer()
        gradient.colors = [
            #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1).cgColor,
            #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1).cgColor
        ]
        return gradient
    }()
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
        greetingLabel.text = "Welcome, \(userName)!"
    }
    
   
}
