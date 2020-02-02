//
//  FitAppBixTests.swift
//  FitAppBixTests
//
//  Created by Pavel Suvit on 25/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import XCTest
@testable import FitAppBix

class FitAppBixTests: XCTestCase {
    
    private var presenter: BodyFatMeasurementPresenter!
    private var viewDelegateMock: ViewDelegateMock!

    override func setUp() {
        viewDelegateMock = ViewDelegateMock()
        presenter = BodyFatMeasurementPresenterBase()
        presenter.setViewDelegate(bodyFatMeasurementViewDelegate: viewDelegateMock)
    }
    
    func testSomething1() {
        presenter.calculateBFPByBMI(gender: "Male", age: "26", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.textDisplayed == "18.4")
    }
    
    func testSomething() {
        presenter.calculateBFPByBMI(gender: "Female", age: "26", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.textDisplayed == "29.2")
    }
    

}

class ViewDelegateMock: NSObject, BodyFatMeasurementViewDelegate {
    var textDisplayed: String = ""
    func dispalyBodyFatMeasurement(bodyFatMeasurement: String) {
        textDisplayed = bodyFatMeasurement
    }
    
}
