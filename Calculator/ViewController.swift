//
//  ViewController.swift
//  Calculator
//
//  Created by Juan Jose Gomez Medina on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSegmentationControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
      
    @IBAction func calculateTotal(_ sender: Any) {
        //get bill amount from the user (TEXT BOX)
        let bill = Double(billAmountText.text!) ?? 0
        //get total tip. (tip*bill)
        let tipPorcentages = [0.15,0.18,0.2]
        let tip = bill * tipPorcentages[tipSegmentationControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip amount and total.
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
}

    

