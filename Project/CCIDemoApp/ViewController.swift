//
//  ViewController.swift
//  CCIDemoApp
//
//  Created by Victor on 9/3/18.
//  Copyright © 2018 Bananaapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var releaseVersionLabel: UILabel!
    @IBOutlet weak var buildVersionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        releaseVersionLabel.text = "Version: " + Bundle.main.releaseVersionNumber
        buildVersionLabel.text = "Build: " + Bundle.main.buildVersionNumber
    }
}

extension Bundle {
    var releaseVersionNumber: String {
        return infoDictionary?["CFBundleShortVersionString"] as? String ?? "n/a"
    }
    var buildVersionNumber: String {
        return infoDictionary?["CFBundleVersion"] as? String ?? "n/a"
    }
}
