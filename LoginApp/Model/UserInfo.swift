//
//  UserInfo.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

struct UserInfo {
    let name: String
    let surname: String
    let password: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    let company: String
    let office: String
    let position: String
    let description: String
    
    static func getUserInfo() -> UserInfo {
        UserInfo(
            name: "Юрий",
            surname: "Губин",
            password: "123",
            company: "Google",
            office: "Californian Office",
            position: "iOS developer",
            description: """

"""
        )
    }
}
