//
//  BodyFatMeasurementRobotProtocol.swift
//  FitAppBixUITests
//
//  Created by Pavel Suvit on 26/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import Foundation

protocol BodyFatMeasurementRobot {
    func givenIAmOnBodyFatMeasurementScreen()
    func andIChooseMaleAsAGender()
    func andIChooseFemaleAsAGender()
    func andITypeFollowingAge(age: Int)
    func andITypeFollowingWeight(weight: Double)
    func andITypeFollowingHeight(height: Double)
    func andIClickOnCalculateBtn()
    func iShouldSeeFollowingBodyFatPercentageByBMIMethod(bodyFatPercentage: Double)
}
