//
//  Extensions.swift
//  Calculator
//
//  Created by Dionata Leonel Machado Ferraz on 28/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

extension Double {
    var cleanFloatingNumber: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
