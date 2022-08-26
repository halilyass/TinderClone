//
//  MatchCellViewModel.swift
//  Tinder
//
//  Created by Halil YAŞ on 26.08.2022.
//

import Foundation

struct MatchCellViewModel {
    
    let nameText: String
    let profileImageUrl: URL?
    let uid: String
    
    init(match: Match) {
        nameText = match.name
        profileImageUrl = URL(string: match.profileImageUrl)
        uid = match.uid
    }
}
