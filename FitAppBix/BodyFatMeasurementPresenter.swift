//
//  BodyFatMeasurementPresenter.swift
//  FitAppBix
//
//  Created by Pavel Suvit on 02/02/2020.
//  Copyright © 2020 Pavel Suvit. All rights reserved.
//

import Foundation

protocol BodyFatMeasurementPresenter {
    func setViewDelegate(bodyFatMeasurementViewDelegate: BodyFatMeasurementViewDelegate)
    func calculateBFPByBMI(gender: String, age: String, weight: String, height: String)
}
