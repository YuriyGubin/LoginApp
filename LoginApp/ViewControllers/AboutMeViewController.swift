//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    
    @IBOutlet var infoLabels: [UILabel]!
    @IBOutlet var nameLabel: UILabel!
    
    private let firstColor = #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1)
    private let secondColor = #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1)
    
    var userInfo: UserInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserInfo()
        nameLabel.text = userInfo.name
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
    }
    
    private func getUserInfo() {
        infoLabels.forEach { label in
            if label.tag == 0 {
                label.text = userInfo.name
            } else if label.tag == 1 {
                label.text = userInfo.surname
            } else if label.tag == 2 {
                label.text = userInfo.company
            } else if label.tag == 3 {
                label.text = userInfo.office
            } else {
                label.text = userInfo.position
            }
        }
    }

}
