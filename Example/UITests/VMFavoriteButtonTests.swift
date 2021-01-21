// Created on 20/01/21. Copyright © 2021 Vand. All rights reserved.

import XCTest

class VMFavoriteButtonTests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false

        app = XCUIApplication()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFavoriteButtonToggle() throws {
        app.launch()

        let tableItem = "Favorite button"

        app.staticTexts[tableItem].tap()

        let favoriteButton = app.buttons["Favorite button 1"]

        XCTAssertFalse(favoriteButton.isSelected)

        favoriteButton.tap()

        XCTAssertTrue(favoriteButton.isSelected)
    }

}
