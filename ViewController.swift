//
//  ViewController.swift
//  PreWork App
//
//  Created by Harika Lingareddy on 11/23/17.
//  Copyright © 2017 Harika Lingareddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var total1: UILabel!
    @IBOutlet weak var total2: UILabel!
    @IBOutlet weak var total3: UILabel!
    @IBOutlet weak var total4: UILabel!
    @IBOutlet weak var total5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.10, 0.15, 0.20, 0.25, 0.30]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let totalone = bill + tip
        let totaltwo = (bill + tip) / 2
        let totalthree = (bill + tip) / 3
        let totalfour  = (bill + tip) / 4
        let totalfive = (bill + tip) / 5
        
        tipLabel.text = String (format: "$%.2f", tip)
        total1.text = String (format: "$%.2f", totalone)
        total2.text = String (format: "$%.2f", totaltwo)
        total3.text = String (format: "$%.2f", totalthree)
        total4.text = String (format: "$%.2f", totalfour)
        total5.text = String (format: "$%.2f", totalfive)
    }
    
    
}

