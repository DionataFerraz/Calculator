//
//  Operations.swift
//  Calculator
//
//  Created by Dionata Leonel Machado Ferraz on 28/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

class Operations {

    private var operations: Dictionary<String, Operation> = [
        "x²": Operation.UnaryOperation({$0 * $0}),
        "√": Operation.UnaryOperation({sqrt($0)}),
        "+": Operation.BinaryOperation({$0 + $1}),
        "-": Operation.BinaryOperation({$0 - $1}),
        "x": Operation.BinaryOperation({$0 * $1}),
        "÷": Operation.BinaryOperation({$0 / $1})
    ]
    
    private enum Operation {
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
    }
    
    func performOperation(symbol: String, val1: Double, val2: Double) -> String {
        if let operation = operations[symbol] {
            switch operation {
                case .UnaryOperation(let function):
                    return function(val1).cleanFloatingNumber
                case .BinaryOperation(let function):
                    return function(val1, val2).cleanFloatingNumber
            }
        }
        return "0"
    }
}
