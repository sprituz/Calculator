//
//  ContentView.swift
//  Calculator
//
//  Created by 이다연 on 1/22/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(CalculatorViewModel.self) private var calculatorViewModel
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                NumberDisplayView(num: calculatorViewModel.display)
                ButtonView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(CalculatorViewModel())
}
