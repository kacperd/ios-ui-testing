//
//  AuthoriedContentScreen.swift
//  UITesting
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import SwiftUI

struct AuthoriedContentScreen: View {

    @ObservedObject var appState: AppState = .shared

    var body: some View {
        VStack {
            Text("This is authorized content.")


            Button("Logout") {
                appState.set(authorized: false)
            }
            .accessibilityIdentifier(Identifiers.AuthorizedContentScreen.logoutButton)    
        }
        .padding()
    }
}

#Preview {
    AuthoriedContentScreen()
}
