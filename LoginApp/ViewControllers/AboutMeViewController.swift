//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    
    @IBOutlet var infoLabels: [UILabel]!
    @IBOutlet var photoImage: UIImageView! 
    
    private let firstColor = #colorLiteral(red: 1, green: 0.5301271778, blue: 0.7130295974, alpha: 1)
    private let secondColor = #colorLiteral(red: 0.6380690239, green: 0.548365408, blue: 1, alpha: 1)
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = userInfo.person.fullName
        getUserInfo()
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
    }
    
    override func viewDidLayoutSubviews() {
        photoImage.layer.cornerRadius = photoImage.frame.size.width / 2
        photoImage.layer.borderColor = UIColor.white.cgColor
        photoImage.layer.borderWidth = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.userInfo = userInfo
    }
    
    private func getUserInfo() {
        infoLabels.forEach { label in
            if label.tag == 0 {
                label.text = userInfo.person.name
            } else if label.tag == 1 {
                label.text = userInfo.person.surname
            } else if label.tag == 2 {
                label.text = userInfo.person.company
            } else if label.tag == 3 {
                label.text = userInfo.person.office
            } else {
                label.text = userInfo.person.position
            }
        }
    }

}
