//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by michael graver on 4/10/18.
//  Copyright © 2018 Michael Graver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    var lastOperation : String = ""
    var calculatorScreen : String = "0"
    var currentTotal : Double = 0
    var displayResetFlag = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorDisplay.text = calculatorScreen
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

 
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if lastOperation != "" && displayResetFlag == false {
            calculatorScreen = "0"
            displayResetFlag = true
        }

        switch sender.tag {
        case 0:
            if calculatorScreen != "0" {
                calculatorScreen = "\(calculatorScreen)\(sender.tag)"
            }
        case 1,2,3,4,5,6,7,8,9:
            if calculatorScreen == "0" {
                calculatorScreen = "\(sender.tag)"
                print("\(sender.tag)")
            }
            else if calculatorScreen != "0" {
                calculatorScreen = "\(calculatorScreen)\(sender.tag)"
                print ("\(calculatorScreen)\(sender.tag)")
            }
            
        default:
            print("Sender value out of range")
            
        }
    }
    
    }
    

