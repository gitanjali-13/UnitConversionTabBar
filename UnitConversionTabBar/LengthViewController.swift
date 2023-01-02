//
//  ViewController.swift
//  UnitConversionTabBar
//
//  Created by Admin on 01/01/23.
//

import UIKit

class LengthViewController: UIViewController {
    

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var fromSeg: UISegmentedControl!
    
    @IBOutlet weak var toSeg: UISegmentedControl!
    
    @IBOutlet weak var outputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let appearance = UITabBarItem.appearance()
//      let attributes: [NSAttributedString.key: AnyObject] = [NSAttributedString.Key(NSAttributedString.key.font.rawValue): UIFont(name: "Length", size: 14)]
        //view.backgroundColor = .gray
    }

    
    @IBAction func convert(_ sender: UIButton) {
        if inputTextField.text == "" {
            
        } else {
            if let inputValue = Double(inputTextField.text!){
                
                print("\(inputValue)")
                
                let answer = afterConversion(From: fromSeg.titleForSegment(at: fromSeg.selectedSegmentIndex)!,
                            To: toSeg.titleForSegment(at: toSeg.selectedSegmentIndex)!, inputTextField: inputValue)
                outputTextField.text = answer
                print("\(answer)")
            }
            
        }
        
        func afterConversion(From from: String, To to: String, inputTextField value: Double) -> String {
            
            if from == to {
                print("Enter different choice")
                
            } else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 100))"
                return answer
            }
            else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 2 {
                
                let answer = "\(Double(value * 0.001))"           //m - km
                return answer
            } else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.000621371))"           //m - mile
                return answer
            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 0.01))"           //cm - m
                return answer
            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 2 {
                let answer = "\(Double(value * 0.000010))"           //cm - km
                return answer
            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.000006))"           //cm - mile
                return answer
            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 1000))"           //km - m
                return answer
            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 0.100000))"           //km - cm
                return answer
            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 3 {
                let answer = "\(Double(value * 0.6213))"           //km - mile
                return answer
            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 0 {
                let answer = "\(Double(value * 1609.34))"           //mile - m
                return answer
            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 1 {
                let answer = "\(Double(value * 160934.40))"           //mile - cm
                return answer
            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 2 {
                let answer = "\(Double(value * 1.609344))"           //mile - km
                return answer
            } else {
                print("Invalid input")
            }
            return "\(value)"
        }
    }
}
        
    
        
        //func conversion(From from: String , To to: String, inputTextField value: Double) -> String {
            
//            if (from == to)
//            {
//
//                print("  ")
//            } else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 1 {
//                let answer = "\(Double(value * 100))"           //m - cm
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 2 {
//                let answer = "\(Double(value * 0.001))"           //m - km
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 0 && toSeg.selectedSegmentIndex == 3 {
//                let answer = "\(Double(value * 0.000621371))"           //m - mile
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 0 {
//                let answer = "\(Double(value * 0.01))"           //cm - m
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 2 {
//                let answer = "\(Double(value * 0.000010))"           //cm - km
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 1 && toSeg.selectedSegmentIndex == 3 {
//                let answer = "\(Double(value * 0.000006))"           //cm - mile
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 0 {
//                let answer = "\(Double(value * 1000))"           //km - m
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 1 {
//                let answer = "\(Double(value * 0.100000))"           //km - cm
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 2 && toSeg.selectedSegmentIndex == 3 {
//                let answer = "\(Double(value * 0.6213))"           //km - mile
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 0 {
//                let answer = "\(Double(value * 1609.34))"           //mile - m
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 1 {
//                let answer = "\(Double(value * 160934.40))"           //mile - cm
//                return answer
//            } else if fromSeg.selectedSegmentIndex == 3 && toSeg.selectedSegmentIndex == 2 {
//                let answer = "\(Double(value * 1.609344))"           //mile - km
//                return answer
//            } else {
//                print("Invalid value")
//            }
//            return "\(value)"
//        }
//
//    }
//}
    
