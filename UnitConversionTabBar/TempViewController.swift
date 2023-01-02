//
//  TempViewController.swift
//  UnitConversionTabBar
//
//  Created by Admin on 01/01/23.
//

import UIKit

class TempViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var fromTempSeg: UISegmentedControl!
    
    @IBOutlet weak var toTempSeg: UISegmentedControl!
    
    
    @IBOutlet weak var outputTempSeg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .blue
    }
    
    @IBAction func ConvertBtn(_ sender: UIButton) {
        
        
        
        if inputTextField.text == "" {
            
        } else {
            if let input = Double(inputTextField.text!) {
                print("\(input)")
                let output = ConvertBtn(From: fromTempSeg.titleForSegment(at: fromTempSeg.selectedSegmentIndex)!,
                                        To: toTempSeg.titleForSegment(at: toTempSeg.selectedSegmentIndex)!, inputTextField: input)
                outputTempSeg.text = output
                print("\(output)")
            }
        }
        func ConvertBtn(From fromtemp: String, To totemp: String, inputTextField value: Double) -> String {
            
            if fromtemp == totemp {
                print("Enter valid value")
            } else if fromTempSeg.selectedSegmentIndex == 0 && toTempSeg.selectedSegmentIndex == 1 {
                let output = "\(((Double(value * 9 / 5) + 32) * 100 ) / 100) "    //cel - fahr
                return output

            } else if fromTempSeg.selectedSegmentIndex == 1 && toTempSeg.selectedSegmentIndex == 0 {
                let output = "\(((Double(value - 32) * (5/9)) * 100 ) / 100)"   // fr - cel
                return output
                
            }
            return "\(value)"
        }
    }
    

}
