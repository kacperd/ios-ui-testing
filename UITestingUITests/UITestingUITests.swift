//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by Kacper Dziubek on 01/11/2023.
//

import XCTest

final class UITestingUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLogin() throws {
        let app = XCUIApplication()
        app.launch()

        let loginTextField = app.textFields["Login"]
        loginTextField.tap()
        loginTextField.typeText("test")

        let passwordTextField = app.textFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText("test")

        app.buttons["Sign in"].tap()

        XCTAssertTrue(app.staticTexts["This is authorized content."].isHittable)
    }

    func testLoginError() throws {
        let app = XCUIApplication()
        app.launch()

        let loginTextField = app.textFields["Login"]
        loginTextField.tap()
        loginTextField.typeText("test")

        let passwordTextField = app.textFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText("wrong password")

        app.buttons["Sign in"].tap()

        XCTAssertTrue(app.staticTexts["Wrong credentials"].isHittable)
    }
}
