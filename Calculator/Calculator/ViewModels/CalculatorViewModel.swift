//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by 이다연 on 1/26/24.
//

import SwiftUI
import Combine

@Observable
class CalculatorViewModel {
    var display: String = "0"
    var firstNumber: String = ""
    var secondNumber: String = ""
    var operation: ButtonType? = nil
    var shouldClearDisplay: Bool = false
    
    func printNum () {
        print("display:\(display), firstNumber:\(firstNumber), secondNumber:\(secondNumber), operation: \(operation), shoudclear:\(shouldClearDisplay)")
    }
    
    func enterNum(_ num: String) {
        if shouldClearDisplay {
            if num == "." {
                display = "0."
            }
            else {
                display = num
            }
            shouldClearDisplay = false
        } else {
            if num == "." {
                display = display.contains(".") ? display : display + "."
            }
            else {
                display = display == "0" ? num : display + num
            }
        }
    }
    
    func calculateAnswer(_ op: ButtonType) {
        printNum()
        guard let displayNum = Decimal(string: display) else { return }
        switch op {
        case .operation(_):
            shouldClearDisplay = true
            if let operation = operation, let firstNum = Decimal(string: firstNumber) {
               secondNumber = display
               display = handleOperation(op: op, firstNum:firstNum, displayNum: displayNum) ?? display
            } else if firstNumber == "" {
                firstNumber = String(describing: displayNum)
            }
        case .additional(_):
            display = handleAdditionalOperations(op: op, displayNum: displayNum) ?? display
            break
        default:
            break
        }
        operation = op
    }
    
    private func handleAdditionalOperations(op: ButtonType, displayNum: Decimal) -> String? {
        switch op {
        case .additional(.plusMinus):
            return String(describing: -displayNum)
        case .additional(.percent):
            return String(describing: displayNum * 0.01)
        default:
            return String(describing: displayNum)
        }
    }
    
    private func handleOperation(op: ButtonType, firstNum: Decimal, displayNum: Decimal) -> String? {
        switch op {
        case .operation(.plus), .operation(.minus), .operation(.divide),.operation(.multiply):
            firstNumber = performOperation(op: operation, firstNum: firstNum, secondNum: displayNum)
            display = firstNumber
            break
        default:
            firstNumber = performOperation(op: operation, firstNum: firstNum, secondNum: displayNum)
            display = firstNumber
            secondNumber = ""
            operation = nil
        }
        return display
    }
    
    private func performOperation(op: ButtonType?, firstNum: Decimal, secondNum: Decimal) -> String {
        switch op {
        case .operation(.plus):
            return String(describing: firstNum + secondNum)
        case .operation(.minus):
            return String(describing: firstNum - secondNum)
        case .operation(.multiply):
            return String(describing: firstNum * secondNum)
        case .operation(.divide):
            return String(describing: firstNum / secondNum)
        default:
            return display
        }
    }
    
    func allClear() {
        display = "0"
        firstNumber = ""
        secondNumber = ""
        operation = nil
    }
}

