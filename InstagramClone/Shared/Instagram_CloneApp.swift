//
//  Instagram_CloneApp.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 3/25/21.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
