//
//  Match.swift
//  Tinder
//
//  Created by Halil YAŞ on 26.08.2022.
//

import Foundation

struct Match {
    let name: String
    let profileImageUrl: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
