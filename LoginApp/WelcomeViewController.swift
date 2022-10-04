//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    var greeting: String!
    
    var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.colors = [
            #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).cgColor,
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).cgColor
        ]
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(greeting ?? "k")"
        gradient.frame = view.bounds
        view.layer.addSublayer(gradient)
    }
}
