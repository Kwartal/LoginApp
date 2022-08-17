//
//  Mor info.swift
//  LoginApp
//
//  Created by Богдан Баринов on 16.08.2022.
//



struct User {
    let login: String
    let password: String
    let characteristic: Person
    
    static func getUser() -> User {
        User(login: "1",
             password: "1",
             characteristic: Person(name: "Bogdan",
                                            surname: "Barinov",
                                            from: "Moscow",
                                            hobby: "Sport and Music",
                                            lastProfession: "Manager",
                                            height: "186",
                                            weight: "86")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let from: String
    let hobby: String
    let lastProfession: String
    let height: String
    let weight: String
}
