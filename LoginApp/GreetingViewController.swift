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
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
        greetingLabel.text = "Welcome, \(userName)!"
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradient(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
