//
//  ButtonType.swift
//  Calculator
//
//  Created by 이다연 on 1/25/24.
//

import Foundation

enum Digit: String {
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
    case decimal = "."
}

enum Operation: String {
    case plus = "plus"
    case minus = "minus"
    case multiply = "multiply"
    case divide = "divide"
    case equal = "equal"
}

enum Additional: String {
    case allClear = "AC"
    case plusMinus = "plus.forwardslash.minus"
    case percent = "percent"
}

enum ButtonType {
    case digit(Digit)
    case operation(Operation)
    case additional(Additional)
}
