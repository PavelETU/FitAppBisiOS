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
        XCUIApplication().pickerWheels["Gender"].adjust(toPickerWheelValue: "Male")
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
    
    func andITypeFollowingHeight(height: Double) {
        let text = XCUIApplication().textFields["Height"]
        text.tap()
        text.typeText(String(height))
    }
    
    func iShouldSeeFollowingBodyFatPercentageByBMIMethod(bodyFatPercentage: Double) {
        XCUIApplication().textViews[String(bodyFatPercentage)].isHittable
    }
}
