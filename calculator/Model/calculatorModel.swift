//
//  calculatorModel.swift
//  calculator
//
//  Created by Calin Rafa on 20.03.2023.
//

import Foundation
import SwiftUI

enum Keys: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case add = "+"
    case substract = "-"
    case multiply = "X"
    case divide = "/"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor: Color {
        switch self {
        case .add, .substract, .multiply, .divide, .equal:
            return Color("Voperator")
        case .clear, .negative, .percent:
            return Color("Hoperator")
        default:
            return Color("num")
        }
    }
}

enum Operation {
    case add, substract, multiply, divide, none
}
