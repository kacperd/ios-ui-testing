//
//  UITestingApp.swift
//  UITesting
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import SwiftUI

@main
struct UITestingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    if CommandLine.arguments.contains("-logout") {
                        AppState.shared.set(authorized: false)
                    }
                }
        }
    }
}
