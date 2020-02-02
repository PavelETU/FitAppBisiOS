//
//  BodyFatMeasurementPresenterBase.swift
//  FitAppBix
//
//  Created by Pavel Suvit on 02/02/2020.
//  Copyright © 2020 Pavel Suvit. All rights reserved.
//

import Foundation

class BodyFatMeasurementPresenterBase: BodyFatMeasurementPresenter {
    
    weak private var viewDelegate: BodyFatMeasurementViewDelegate?
    
    func setViewDelegate(bodyFatMeasurementViewDelegate: BodyFatMeasurementViewDelegate) {
        viewDelegate = bodyFatMeasurementViewDelegate
    }
    
    func calculateBFPByBMI(gender: String, age: String, weight: String, height: String) {
        guard let numericWeight = Float(weight), let numericHeight = Float(height), let numericAge = Float(age) else {
            return
        }
        let bmi = numericWeight / (numericHeight * numericHeight / 10000)
        var bfm: Float!
        if (gender == "Male") {
            bfm = 1.2 * bmi + 0.23 * numericAge - 16.2
        }
        if (gender == "Female") {
            bfm = 1.2 * bmi + 0.23 * numericAge - 5.4
        }
        viewDelegate?.dispalyBodyFatMeasurement(bodyFatMeasurement: String(format: "%.1f", bfm))
    }
}
