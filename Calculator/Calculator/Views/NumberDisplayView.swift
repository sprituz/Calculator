//
//  NumberDisplayView.swift
//  Calculator
//
//  Created by 이다연 on 1/22/24.
//

import SwiftUI

struct NumberDisplayView: View {
    @Environment(CalculatorViewModel.self) var calculatorViewModel
    var num: String
    var body: some View {
        Text(num)
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(Color.black)
    }
}

#Preview {
    NumberDisplayView(num: CalculatorViewModel().display)
        .environment(CalculatorViewModel())
}
