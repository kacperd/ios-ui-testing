//
//  LoginScreen.swift
//  UITesting
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var appState: AppState = .shared
    @State var login: String = ""
    @State var password: String = ""
    @State var error: String?

    var body: some View {
        VStack {
            TextField("Login", text: $login)

            TextField("Password", text: $password)

            if let error {
                Text(error)
                    .foregroundStyle(.red)
            }

            Button(action: {
                if login == "test" && password == "test" {
                    appState.set(authorized: true)
                } else {
                    error = "Wrong credentials"
                }
            }, label: {
                Text("Login")
            })
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
}

#Preview {
    LoginScreen()
}
