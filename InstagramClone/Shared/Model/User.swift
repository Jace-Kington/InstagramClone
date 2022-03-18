//
//  User.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 4/23/21.
//

import Firebase
import FirebaseFirestoreSwift

struct User: Decodable, Identifiable {
    let username: String
    let email: String
    let fullname: String
    var profileImageURL: String?
    @DocumentID var id: String?
    var stats: UserStatsData?
    
    var isCurrentUser: Bool {
        return AuthViewModel.shared.userSession?.uid == id
    }
    
    var didFollow: Bool? = false
    var bio: String?
}

struct UserStatsData: Decodable {
    var following: Int
    var followers: Int
    var posts: Int
}
