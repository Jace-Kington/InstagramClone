//
//  ProfileView.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 4/19/21.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                
                if let currentProfileID = user.id {
                    
                    PostGridView(config: .profile(currentProfileID))                        
                }
            }
            .padding(.top)
        }
    }
}
