//
//  main.swift
//  SwiptOOP
//
//  Created by Cumali Atalan on 20.07.2022.
//

import Foundation

print("Hello, World!")

let user = User(name: "cumali", age: 25, job: "engineerr", type: UserType.AdminUser)

print(user.job)

user.exampleFunction()

let zeynep = SpecialUser(name: "zeynep", age: 1, job: "barxik", type: .NormalUser)

zeynep.exampleFunction()
zeynep.newFunction()

// open, public, internal, fileprivate, private
