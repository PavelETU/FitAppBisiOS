//
//  FitAppBixUITests.swift
//  FitAppBixUITests
//
//  Created by Pavel Suvit on 25/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import XCTest

class FitAppBixUITests: XCTestCase, BodyFatMeasurementRobot {
    override func setUp() {
        continueAfterFailure = false
    }

    func testCase() {
        givenIAmOnBodyFatMeasurementScreen()
        andIChooseMaleAsAGender()
        andITypeFollowingAge(age: 26)
        andITypeFollowingWeight(weight: 80)
    }
}
