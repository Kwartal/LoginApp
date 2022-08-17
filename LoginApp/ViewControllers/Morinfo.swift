//
//  Mor info.swift
//  LoginApp
//
//  Created by Богдан Баринов on 16.08.2022.
//

import Foundation


struct User {
    let login: String?
    let password: String?
    let characteristic: Characteristic
    
    static func getUser() -> User {
        User(login: "1",
             password: "1",
             characteristic: Characteristic(name: "Bogdan",
                                            surname: "Barinov",
                                            from: "Moscow",
                                            hobby: "Sport and Music",
                                            lastProfession: "Manager",
                                            height: 186,
                                            weight: 86)
        )
    }
}

struct Characteristic {
    let name: String
    let surname: String
    let from: String
    let hobby: String
    let lastProfession: String
    let height: Int
    let weight: Int
    
}
