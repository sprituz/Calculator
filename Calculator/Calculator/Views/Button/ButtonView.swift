//
//  ButtonView.swift
//  Calculator
//
//  Created by 이다연 on 1/25/24.
//

import SwiftUI

struct ButtonView: View {
    @Environment(CalculatorViewModel.self) var calculatorViewModel
    var body: some View {
        VStack {
            HStack {
                Button(action: {calculatorViewModel.allClear()}, label: {
                    Text("AC")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color.gray)
                .foregroundColor(.black)
                .clipShape(Circle())
                .font(.title)
                
                Button(action: {calculatorViewModel.calculateAnswer(.additional(.plusMinus))}, label: {
                    Image(systemName: "plus.forwardslash.minus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.black)
                .background(Color.gray)
                .clipShape(Circle())
                
                Button(action: {calculatorViewModel.calculateAnswer(.additional(.percent))}, label: {
                    Image(systemName: "percent")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.black)
                .background(Color.gray)
                .clipShape(Circle())
                
                Button(action: {calculatorViewModel.calculateAnswer(.operation(.divide))}, label: {
                    Image(systemName: "divide")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(Circle())
            }
            HStack {
                Button(action: {calculatorViewModel.enterNum("7")}, label: {
                    Text("7")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("8")}, label: {
                    Text("8")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("9")}, label: {
                    Text("9")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.calculateAnswer(.operation(.multiply))}, label: {
                    Image(systemName: "multiply")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(30)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(Circle())
            }
            HStack{
                Button(action: {calculatorViewModel.enterNum("4")}, label: {
                    Text("4")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("5")}, label: {
                    Text("5")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("6")}, label: {
                    Text("6")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.calculateAnswer(.operation(.plus))}, label: {
                    Image(systemName: "plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(Circle())
            }
            HStack{
                Button(action: {calculatorViewModel.enterNum("1")}, label: {
                    Text("1")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("2")}, label: {
                    Text("2")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum("3")}, label: {
                    Text("3")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.calculateAnswer(.operation(.minus))}, label: {
                    Image(systemName: "minus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(Circle())
            }
            HStack{
                Button(action: {calculatorViewModel.enterNum("0")}, label: {
                    Text("0")
                    Spacer()
                })
                .padding(30)
                .frame(width: 160,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .cornerRadius(40)
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.enterNum(".")}, label: {
                    Text(".")
                })
                .padding()
                .frame(width: 80,height: 80)
                .background(Color(UIColor.darkGray))
                .foregroundColor(.white)
                .clipShape(Circle())
                .font(.system(size: 35))
                
                Button(action: {calculatorViewModel.calculateAnswer(.operation(.equal))}, label: {
                    Image(systemName: "equal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(27)
                })
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(Circle())
            }
        }
    }
}

#Preview {
    ButtonView()
        .environment(CalculatorViewModel())
}
