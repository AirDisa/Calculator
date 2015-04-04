//
//  ViewController.swift
//  Calculator
//
//  Created by Disa Johnson on 4/4/15.
//  Copyright (c) 2015 Disa Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// ViewController is probably a bad name
// maybe CalculatorViewController
// many changes required to rename, but possible
    
    @IBOutlet weak var display: UILabel!

    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
}