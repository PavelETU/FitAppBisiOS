//
//  BodyFatMeasurementRobotExtension.swift
//  FitAppBixUITests
//
//  Created by Pavel Suvit on 26/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import Foundation
import XCTest

extension BodyFatMeasurementRobot {
    func givenIAmOnBodyFatMeasurementScreen() {
        XCUIApplication().launch()
        XCUIApplication().buttons["Go To Fat measurements"].tap()
    }
    
    func andITypeFollowingAge(age: Int) {
        let text = XCUIApplication().textFields["Age"]
        text.typeText(String(age))
    }
}
