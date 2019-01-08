//
//  ViewController.swift
//  TipCalculator
//
//  Created by Minas Karagiorgis on 14/12/2018.
//  Copyright © 2018 Minas Karagiorgis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitBy2Lable: UILabel!
    
    @IBOutlet weak var splitBy3Lable: UILabel!
    
    @IBOutlet weak var splitBy4Lable: UILabel!
    
   
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func calcTip(_ sender: Any) {
    
        let tipPercentage=[0.18,0.2,0.25]
        let bill=Double(billField.text!) ?? 0
        let tip=bill*tipPercentage[tipControl.selectedSegmentIndex]
        let total=bill+tip
        
        tipLable.text = String(format: "$%.2f",tip)
        totalLable.text=String(format: "$%.2f",total)
        splitBy2Lable.text=String(format: "$%.2f",total/2)
        splitBy3Lable.text=String(format: "$%.2f",total/3)
        splitBy4Lable.text=String(format: "$%.2f",total/4)
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

//s
