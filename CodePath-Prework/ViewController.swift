//
//  ViewController.swift
//  CodePath-Prework
//
//  Created by Meshach Adoe on 15/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var currencyCode: UILabel!
    
    let defaults = UserDefaults.standard
    var currencySymbol = ""
    var darkMode = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Set dark mode preferences from UserDefaults
        darkMode = defaults.bool(forKey: "darkON")
        if darkMode == true {
            overrideUserInterfaceStyle = .dark
        } else {
            overrideUserInterfaceStyle = .light
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Calcy"
        billAmountTextField.becomeFirstResponder()
        currencyCode.text = Locale.current.currencyCode!
        currencySymbol = Locale.current.currencySymbol!
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Tip calculation logic
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "%@%.2f", currencySymbol, tip)
        totalLabel.text = String(format: "%@%.2f", currencySymbol, total)
    }
    
}

