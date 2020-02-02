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
    
    func andIChooseFemaleAsAGender() {
        XCUIApplication().pickerWheels["Gender"].adjust(toPickerWheelValue: "Female")
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
    
    func andIClickOnCalculateBtn() {
        XCUIApplication().buttons["Calculate"].tap()
    }
    
    func iShouldSeeFollowingBodyFatPercentageByBMIMethod(bodyFatPercentage: Double) {
        XCTAssertTrue(XCUIApplication().staticTexts[String(bodyFatPercentage)].exists)
    }
}
