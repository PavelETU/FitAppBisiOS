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
    
    func testBFPForMale() {
        presenter.calculateBFPByBMI(gender: "Male", age: "26", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.textDisplayed == "18.4")
    }
    
    func testBFPForFemale() {
        presenter.calculateBFPByBMI(gender: "Female", age: "26", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.textDisplayed == "29.2")
    }
    
    func testGenderPrompt() {
        presenter.calculateBFPByBMI(gender: "Gender", age: "26", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.requestText == "Choose gender")
    }
    
    func testAgePromt() {
        presenter.calculateBFPByBMI(gender: "Male", age: "", weight: "80", height: "183")
        
        XCTAssertTrue(viewDelegateMock.requestText == "Enter your age")
    }
    
    func testWeightPromt() {
        presenter.calculateBFPByBMI(gender: "Female", age: "20", weight: "", height: "183")
        
        XCTAssertTrue(viewDelegateMock.requestText == "Enter your weight")
    }
    
    func testHeightPromt() {
        presenter.calculateBFPByBMI(gender: "Male", age: "20", weight: "50", height: "")
        
        XCTAssertTrue(viewDelegateMock.requestText == "Enter your Height")
    }
    

}

class ViewDelegateMock: NSObject, BodyFatMeasurementViewDelegate {
    var textDisplayed: String = ""
    var requestText: String = ""
    func dispalyBodyFatMeasurement(bodyFatMeasurement: String) {
        textDisplayed = bodyFatMeasurement
    }
    
    func promptUserToEnterMissingValues(message: String) {
        requestText = message
    }
}
