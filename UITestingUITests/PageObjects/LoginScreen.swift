//
//  LoginScreen.swift
//  UITestingUITests
//
//  Created by Kacper Dziubek on 02/11/2023.
//

import XCTest

protocol Screen {
    var app: XCUIApplication { get }
}

struct LoginScreen: Screen {
    let app: XCUIApplication

    func type(email: String) -> Self {
        let loginTextField = app.textFields[Identifiers.LoginScreen.loginTextField]
        loginTextField.tap()
        loginTextField.typeText(email)
        return self
    }

    func type(password: String) -> Self {
        let passwordTextField = app.textFields[Identifiers.LoginScreen.passwordTextField]
        passwordTextField.tap()
        passwordTextField.typeText(password)
        return self
    }

    func tapSignIn() -> AuthorizedContentScreen {
        app.buttons[Identifiers.LoginScreen.signInButton].tap()
        return AuthorizedContentScreen(app: app)
    }

    @discardableResult func tapSignInExpectingError() -> Self {
        app.buttons[Identifiers.LoginScreen.signInButton].tap()
        XCTAssertTrue(app.staticTexts[Identifiers.LoginScreen.errorLabel].isHittable)
        return self
    }
}
