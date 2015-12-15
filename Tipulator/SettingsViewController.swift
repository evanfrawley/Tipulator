//
//  SettingsViewController.swift
//  
//
//  Created by Evan J. Frawley on 12/14/15.
//
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var mehField: UITextField!
    
    @IBOutlet weak var averageField: UITextField!
    
    @IBOutlet weak var awesomeField: UITextField!
    
    @IBOutlet weak var godlikeField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var mehPH = String(format: "%.0f",
            defaults.doubleForKey("mehValue") * 100) + "%"
        
        var averagePH = String(format: "%.0f",
            defaults.doubleForKey("averageValue") * 100) + "%"
        
        var awesomePH = String(format: "%.0f",
            defaults.doubleForKey("awesomeValue") * 100) + "%"
        
        var godlikePH = String(format: "%.0f",
            defaults.doubleForKey("godlikeValue") * 100) + "%"
        
        mehField.placeholder = mehPH
        averageField.placeholder = averagePH
        awesomeField.placeholder = awesomePH
        godlikeField.placeholder = godlikePH
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    //ideally I'd like to learn how to make all of these four 
    //methods apply to the same action without throwing a wonky exception
    @IBAction func onMehChanged(sender: AnyObject) {
        if !mehField.text.isEmpty{
            var meh = NSString(string: mehField.text!).doubleValue
        
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(meh/100, forKey: "mehValue")
            defaults.synchronize()
        }
    }

    @IBAction func onAverageChanged(sender: AnyObject) {
        if !averageField.text.isEmpty{
            var average = NSString(string: averageField.text!).doubleValue
        
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(average/100, forKey: "averageValue")
            defaults.synchronize()
        }
    }
    
    @IBAction func onAwesomeChanged(sender: AnyObject) {
        if !awesomeField.text.isEmpty{
            var awesome = NSString(string: awesomeField.text!).doubleValue
        
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(awesome/100, forKey: "awesomeValue")
            defaults.synchronize()
        }
    }
    
    @IBAction func onGodlikeChanged(sender: AnyObject) {
        if !godlikeField.text.isEmpty{
            var godlike = NSString(string: godlikeField.text!).doubleValue
        
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setDouble(godlike/100, forKey: "godlikeValue")
            defaults.synchronize()
        }
    }
    
    
    @IBAction func onTapAway(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
}
