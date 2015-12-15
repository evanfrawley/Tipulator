//
//  ViewController.swift
//  Tipulator
//
//  Created by Evan J. Frawley on 12/14/15.
//  Copyright (c) 2015 Evan J. Frawley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let meh = defaults.doubleForKey("mehValue")
        let average = defaults.doubleForKey("averageValue")
        let awesome = defaults.doubleForKey("awesomeValue")
        let godlike = defaults.doubleForKey("godlikeValue")
        
        
        var tipPercentages = [meh, average, awesome, godlike]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    
    }
    


}

