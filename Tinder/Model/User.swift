//
//  User.swift
//  Tinder
//
//  Created by Halil YAŞ on 1.08.2022.
//

import UIKit

struct User {
    var name: String
    var age: Int
    var email : String
    let uid : String
    var imageURLs : [String]
    var profession : String
    var minSeekingAge: Int = 18
    var maxSeekingAge: Int = 40
    var bio: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["fullname"] as? String ?? ""
        self.age = dictionary["age"] as? Int ?? 0
        self.email = dictionary["email"] as? String ?? ""
        self.imageURLs = dictionary["imageURLs"] as? [String] ?? [String]()
        self.uid = dictionary["uid"] as? String ?? ""
        self.profession = dictionary["profession"] as? String ?? ""
        self.minSeekingAge = dictionary["minSeekingAge"] as? Int ?? 18
        self.maxSeekingAge = dictionary["maxSeekingAge"] as? Int ?? 60
        self.bio = dictionary["bio"] as? String ?? ""
    }
}
