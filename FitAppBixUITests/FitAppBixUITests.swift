//
//  FitAppBixUITests.swift
//  FitAppBixUITests
//
//  Created by Pavel Suvit on 25/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import XCTest

class FitAppBixUITests: XCTestCase, BodyFatMeasurementRobot {

    func test26YOMaleWith80WightAnd183HeightWouldGet18BodyFatPercentageByBMI() {
        givenIAmOnBodyFatMeasurementScreen()
        andIChooseMaleAsAGender()
        andITypeFollowingAge(age: 26)
        andITypeFollowingWeight(weight: 80)
        andITypeFollowingHeight(height: 183)
        andIClickOnCalculateBtn()
        iShouldSeeFollowingBodyFatPercentageByBMIMethod(bodyFatPercentage: 18.4)
    }
    
    func test26YOFemaleWith80WightAnd183HeightWouldGet29BodyFatPercentageByBMI() {
        givenIAmOnBodyFatMeasurementScreen()
        andIChooseFemaleAsAGender()
        andITypeFollowingAge(age: 26)
        andITypeFollowingWeight(weight: 80)
        andITypeFollowingHeight(height: 183)
        andIClickOnCalculateBtn()
        iShouldSeeFollowingBodyFatPercentageByBMIMethod(bodyFatPercentage: 29.2)
    }
    
}
