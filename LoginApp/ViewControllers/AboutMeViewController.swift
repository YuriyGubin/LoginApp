//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    private let firstColor = #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1)
    private let secondColor = #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
    }

}
