//
//  AppState.swift
//  UITesting
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import Foundation

final class AppState: ObservableObject {
    static var shared = AppState()

    @Published var isAuthorized: Bool

    private var authorizedKey = "authorized"
    
    init() {
        self.isAuthorized = UserDefaults.standard.bool(forKey: authorizedKey)
    }

    func set(authorized: Bool) {
        UserDefaults.standard.setValue(authorized, forKey: authorizedKey)
        isAuthorized = authorized
    }

}
