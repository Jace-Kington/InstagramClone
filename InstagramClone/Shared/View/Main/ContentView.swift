//
//  ContentView.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 4/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                SignInView()
            }
            else {
                if let user = viewModel.currentUser {
                    MainView(user: user, selectedIndex: $selectedIndex)
                }
            }
        }
    }
}

