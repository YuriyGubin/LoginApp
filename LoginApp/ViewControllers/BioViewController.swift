//
//  BioViewController.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    private let firstColor = #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1)
    private let secondColor = #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1)
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = userInfo.person.fullName + " Bio"
        descriptionLabel.text = userInfo.person.description
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
    }

}
