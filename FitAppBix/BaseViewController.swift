//
//  ViewController.swift
//  FitAppBix
//
//  Created by Pavel Suvit on 25/11/2019.
//  Copyright © 2019 Pavel Suvit. All rights reserved.
//

import UIKit
class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openBodyFatMeasurementsScreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BodyFatMeasurementsScreen")
        self.present(vc, animated: true, completion: nil)
    }
    
}

