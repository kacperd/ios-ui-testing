//
//  ContentView.swift
//  UITesting
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var appState: AppState = .shared

    var body: some View {
        if appState.isAuthorized {
            AuthoriedContentScreen()
        } else {
            LoginScreen()
        }
    }
}

#Preview {
    ContentView()
}
