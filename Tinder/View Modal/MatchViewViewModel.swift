//
//  MatchViewViewModel.swift
//  Tinder
//
//  Created by Halil YAŞ on 26.08.2022.
//

import Foundation

struct MatchViewViewModel {
    private let currentUser: User
    let matchedUser: User
    
    let matchLabelText: String
    
    var currentUserImageURL: URL?
    var matchedUserImageURL: URL?
    
    init(currentUser: User, matchedUser: User) {
        self.currentUser = currentUser
        self.matchedUser = matchedUser
        
        matchLabelText = "You and \(matchedUser.name) have liked each other!"
        
        guard let imageUrlString = currentUser.imageURLs.first else { return }
        guard let matchedImageUrlString = matchedUser.imageURLs.first else { return }
        
        currentUserImageURL = URL(string: imageUrlString)
        matchedUserImageURL = URL(string: matchedImageUrlString)
    }
}
