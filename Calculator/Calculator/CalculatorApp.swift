//
//  CalculatorApp.swift
//  Calculator
//
//  Created by 이다연 on 1/22/24.
//

import SwiftUI

@main
struct CalculatorApp: App {
    @State private var calculatorViewModel = CalculatorViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(calculatorViewModel)
        }
    }
}
