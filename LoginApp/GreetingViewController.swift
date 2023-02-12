//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Yuriy on 12.02.2023.
//

import UIKit

class GreetingViewController: UIViewController {
    
    

    private var gradient: CAGradientLayer = {
        
        let gradient = CAGradientLayer()
        gradient.colors = [
            #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).cgColor,
            #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
        ]
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }
    
   
}
