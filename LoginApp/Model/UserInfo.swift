//
//  UserInfo.swift
//  LoginApp
//
//  Created by Yuriy on 13.02.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Yuriy",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let office: String
    let position: String
    let description: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Юрий",
            surname: "Губин",
            company: "Google",
            office: "Californian Office",
            position: "iOS developer",
            description: """
Современная жизнь без программистов просто невозможна.
Создание сайтов, различных программ прикладного характера,
графических ресурсов – дело программистов. Профессиональный программист
должен в совершенстве знать языки программирования, владеть английским
языком на хорошем уровне, уметь создавать любые программы, веб-страницы,
создавать к ним дизайн.
"""
        )
    }
}
