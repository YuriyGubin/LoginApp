//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    var greeting: String!
    
    var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).cgColor,
            #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).cgColor
        ]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = greeting
        gradient.frame = backgroundView.bounds
        backgroundView.layer.addSublayer(gradient)
    }
}
