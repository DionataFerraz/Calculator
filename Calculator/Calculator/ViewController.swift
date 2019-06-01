//
//  ViewController.swift
//  Calculator
//
//  Created by Dionata Leonel Machado Ferraz on 27/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var userIsTyping = false
    private var operations = Operations()
    
    @IBOutlet weak var displayResult: UILabel!
    
    var valueA: Double = 0
    var valueB: Double = 0
    var currentOperator: String = ""
    
    @IBAction private func touchNumber(_ sender: UIButton) {
        displayResult.text?.append(sender.currentTitle!)
        
        if userIsTyping {
            valueB = Double(displayResult.text!)!
        } else {
            valueA = Double(displayResult.text!)!
        }
    }
    
    @IBAction func touchUnaryOperation(_ sender: UIButton) {
        currentOperator = sender.currentTitle!
        displayResult.text = operations.performOperation(symbol: currentOperator, val1: valueA, val2: valueB)
    }
    
    @IBAction private func touchOperation(_ sender: UIButton) {
        currentOperator = sender.currentTitle!
        userIsTyping = true
        displayResult.text? = ""
    }
    
    @IBAction private func touchResetDislplay(_ sender: UIButton) {
        displayResult.text = ""
        valueA = 0
        valueB = 0
        currentOperator = ""
        userIsTyping = false
    }
    
    @IBAction func touchCalculate(_ sender: Any) {
        displayResult.text = operations.performOperation(symbol: currentOperator, val1: valueA, val2: valueB)
    }
    
}

