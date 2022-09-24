//
//  User.swift
//  SwiptOOP
//
//  Created by Cumali Atalan on 20.07.2022.
//

import Foundation

enum UserType {
    case AdminUser
    case NormalUser
    case GuestUser
}

class User {
    var name : String
    var age : Int
    var job : String
    var type : UserType

    init(name: String, age: Int, job: String, type: UserType) {
        self.name = name
        self.age = age
        self.job = job
        self.type = type
    }
    
    func exampleFunction() {
        print("function is running")
    }
}
