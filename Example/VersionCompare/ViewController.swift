//
//  ViewController.swift
//  VersionCompare
//
//  Created by DragonCherry on 05/11/2017.
//  Copyright (c) 2017 DragonCherry. All rights reserved.
//

import UIKit
import VersionCompare

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(UIDevice.isSystemVersion(lessThan: "99.0.0"))")
        print("\(UIDevice.isSystemVersion(equalTo: UIDevice.current.systemVersion))")
        print("\(UIDevice.isSystemVersion(greaterThan: "3.5.99"))")
        print("\(UIDevice.isSystemVersion(lessThanOrEqualTo: "13.5.99"))")
        print("\(UIDevice.isSystemVersion(greaterThanOrEqualTo: UIDevice.current.systemVersion))")
        print("\(UIDevice.isVersion("10.0.1", equalTo: "10.0.1"))")
        print("\(UIDevice.isVersion("5.10.10", lessThan: "5.11.5"))")
        print("\(UIDevice.isVersion("1.0.0", greaterThan: "0.99.100"))")
        print("\(UIDevice.isVersion("0.5.3", lessThanOrEqualTo: "1.0.0"))")
        print("\(UIDevice.isVersion("0.5.29", greaterThanOrEqualTo: "0.5.3"))")
    }
}

