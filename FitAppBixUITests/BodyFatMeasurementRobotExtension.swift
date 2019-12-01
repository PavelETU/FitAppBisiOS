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
    
    func andIChooseMaleAsAGender() {
        XCUIApplication().switches["Male"].tap()
    }
    
    func andITypeFollowingAge(age: Int) {
        let text = XCUIApplication().textFields["Age"]
        text.tap()
        text.typeText(String(age))
    }
    
    func andITypeFollowingWeight(weight: Double) {
        let text = XCUIApplication().textFields["Weight"]
        text.tap()
        text.typeText(String(weight))
    }
}
