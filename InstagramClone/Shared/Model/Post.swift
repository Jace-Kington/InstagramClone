//
//  Post.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 4/24/21.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerUid: String
    let ownerUsername: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Timestamp
    var ownerImageURL: String?
    
    var user: User?
    var didLike: Bool? = false
    
}
