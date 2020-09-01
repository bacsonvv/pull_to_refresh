//
//  UserInfo.swift
//  VVBS_Project_APIDemo
//
//  Created by Vuong Vu Bac Son on 8/31/20.
//  Copyright © 2020 Vuong Vu Bac Son. All rights reserved.
//

import Foundation
class UserInfo: Codable, Identifiable {
    var userName: String
    var imageURL: String
    var location: String
    var age: Int
    var gender: String
    
    init(userName: String, imageURL: String, location: String, age: Int, gender: String) {
        self.userName = userName
        self.imageURL = imageURL
        self.location = location
        self.age = age
        self.gender = gender
    }
}
