//
//  InstagramCloneApp.swift
//  InstagramClone (iOS)
//
//  Created by Jace Kington on 2/3/22.
//

import SwiftUI
import Firebase

@main
struct InstagramCloneApp: App
{
    init()
    {
        FirebaseApp.configure()
    }
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
