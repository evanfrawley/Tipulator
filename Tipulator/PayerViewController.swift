//
//  PayerViewController.swift
//  Tipulator
//
//  Created by Evan J. Frawley on 12/15/15.
//  Copyright (c) 2015 Evan J. Frawley. All rights reserved.
//

import UIKit

class PayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var payerLabel: UILabel!
    
    var payers = [String]()
    
    var newPayer: String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "TextCell")
        self.nameField.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
    
        nameField.placeholder = "Name..."
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return payers.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = payers[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        println(payers[row])
        
    }

    @IBAction func clearTable(sender: AnyObject) {
        payers = [String]()
        [self.tableView .reloadData()]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func textFieldShouldReturn(nameField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false;
    }

    @IBAction func onNameAdded(sender: AnyObject) {
        newPayer = NSString(string: nameField.text!) as String
        payers.append(newPayer)
        [self.tableView .reloadData()]
        nameField.text = ""
    }
    
    
    @IBAction func onTapAway(sender: AnyObject) {
        view.endEditing(true)
        println(payers)
    }
    
    
    
}
