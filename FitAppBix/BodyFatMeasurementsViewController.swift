//
//  BodyFatMeasurementsViewController.swift
//  FitAppBix
//
//  Created by Pavel Suvit on 26/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import UIKit

class BodyFatMeasurementsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, BodyFatMeasurementViewDelegate {
    
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var bodyFatMeasurementLabel: UILabel!
    
    private let gender = ["Gender", "Male", "Female"]
    private var presenter: BodyFatMeasurementPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.genderPicker.delegate = self
        self.genderPicker.dataSource = self
        presenter = BodyFatMeasurementPresenterBase()
        presenter.setViewDelegate(bodyFatMeasurementViewDelegate: self)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    
    func dispalyBodyFatMeasurement(bodyFatMeasurement: String) {
        bodyFatMeasurementLabel.text = bodyFatMeasurement
    }
    
    @IBAction func calculateClick(_ sender: Any) {
        presenter.calculateBFPByBMI(gender: gender[genderPicker.selectedRow(inComponent: 0)], age: age.text ?? "", weight: weight.text ?? "", height: height.text ?? "")
    }
}
