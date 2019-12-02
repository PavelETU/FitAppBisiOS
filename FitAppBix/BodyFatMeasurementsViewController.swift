//
//  BodyFatMeasurementsViewController.swift
//  FitAppBix
//
//  Created by Pavel Suvit on 26/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import UIKit

class BodyFatMeasurementsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var genderPicker: UIPickerView!
    let gender = ["Gender", "Male", "Female"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.genderPicker.delegate = self
        self.genderPicker.dataSource = self
    
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
}
