//
//  SettingsViewController.swift
//  CodePath-Prework
//
//  Created by Meshach Adoe on 11/03/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var darkModeToggle: UISwitch!
    let defaults = UserDefaults.standard
    
    override func viewWillAppear(_ animated: Bool) {
        // Set current toggle mode based on UserDefaults
        if defaults.bool(forKey: "darkON") {
            darkModeToggle.isOn = defaults.bool(forKey: "darkON")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setDarkMode(_ sender: UISwitch) {
        defaults.setValue(darkModeToggle.isOn, forKey: "darkON")
    }

}
