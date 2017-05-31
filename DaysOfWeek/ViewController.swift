//
//  ViewController.swift
//  DaysOfWeek
//
//  Created by jose ramirez on 5/30/17.
//  Copyright © 2017 Jose Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerDidChange(picker)
    }
    @IBAction func pickerDidChange(_ sender: Any) {
        let date:Date = picker.date
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let dayOfWeek:String = formatter.string(from: date)
        label.text = "The day is a \(dayOfWeek)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

