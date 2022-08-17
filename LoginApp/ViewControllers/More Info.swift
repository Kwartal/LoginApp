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
    
    init(login: String, password: String, characteristic: Person) {
        self.login = login
        self.password = password
        self.characteristic = characteristic
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
    let photoImageName: String
    
    init(name: String, surname: String, from: String, hobby: String, lastProfession: String, height: String, weight: String, photoImageName: String) {
        self.name = name
        self.surname = surname
        self.from = from
        self.hobby = hobby
        self.lastProfession = lastProfession
        self.height = height
        self.weight = weight
        self.photoImageName = photoImageName
    }
}
