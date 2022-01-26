//
//  UserStruct.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import Foundation

struct UserStruct{
    let id : Int
    let username: String
    let password: String
    let email: String
    let role: String
    let isLogin: Bool
}

var userList = [
    UserStruct(id: 1, username: "joe", password: "123456", email: "joe@mail.com", role: "user", isLogin: false),
    UserStruct(id: 2, username: "sam", password: "123456", email: "sam@mail.com", role: "user", isLogin: false),
    UserStruct(id: 3, username: "max", password: "123456", email: "max@mail.com", role: "user", isLogin: false),
    UserStruct(id: 4, username: "lili", password: "123456", email: "lili@mail.com", role: "user", isLogin: false),
    UserStruct(id: 5, username: "admin", password: "123456", email: "admin@mail.com", role: "admin", isLogin: false),
]
