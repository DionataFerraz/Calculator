//
//  ViewController.swift
//  Calculator
//
//  Created by Dionata Leonel Machado Ferraz on 27/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayResult: UILabel!
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        displayResult.text?.append(digit)
    }
    
    @IBAction func clearDysplay(_ sender: Any) {
        displayResult.text = ""
    }
}

