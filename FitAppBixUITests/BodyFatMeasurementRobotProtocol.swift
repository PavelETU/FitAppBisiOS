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
    func andITypeFollowingAge(age: Int)
}
