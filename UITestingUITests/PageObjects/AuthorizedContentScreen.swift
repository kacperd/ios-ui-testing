//
//  AuthorizedContentScreen.swift
//  UITestingUITests
//
//  Created by Kacper Dziubek on 02/11/2023.
//


import XCTest


struct AuthorizedContentScreen: Screen {
    let app: XCUIApplication

    @discardableResult func verifyMessage() -> Self {
        XCTAssertTrue(app.buttons[Identifiers.AuthorizedContentScreen.logoutButton].isHittable)
        return self
    }

    func tapLogout() -> LoginScreen {
        app.buttons[Identifiers.AuthorizedContentScreen.logoutButton].tap()
        return LoginScreen(app: app)
    }
}
