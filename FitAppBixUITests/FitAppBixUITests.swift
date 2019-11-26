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
        andITypeFollowingAge(age: 26)
    }
}
