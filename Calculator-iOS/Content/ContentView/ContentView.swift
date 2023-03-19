//
//  ContentView.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import SwiftUI

//MARK: - Content View
struct ContentView: View {
    //MARK: - Properties
    @StateObject private var viewModel = ViewModel()
    
    var color: Color = .blue
    
    
    //MARK: Handling of pressing = button
    func handleEquals(){
        print("Equals")
        
        switch (viewModel.selectedOperator){
        case .addition:
            viewModel.result = viewModel.result + viewModel.temporaryNumber
        case .subtraction:
            viewModel.result = viewModel.result - viewModel.temporaryNumber
        case .multiply:
            viewModel.result = viewModel.result * viewModel.temporaryNumber
        case .division:
            guard viewModel.temporaryNumber != 0 else {
                viewModel.result = 0
                return
            }
            viewModel.result = viewModel.result / viewModel.temporaryNumber
        }
        
        viewModel.expression = ""
        viewModel.temporaryNumber = 0
    }
    
    
    //MARK: - Layout
    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            Image(systemName: "c.circle")
                .resizable()
                .foregroundColor(color)
                .frame(width: 100, height: 100)
            
            Text("My first fancy calculator!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(color)
            
            Spacer()
            
            VStack(spacing: 8) {
                HStack(spacing: 10) {
                    OperatorButtonView(icon: "plus", selectedOperator: $viewModel.selectedOperator, buttonOperator: .addition, color: color){
                        viewModel.handleOperation(operation: .addition)
                    }
                    
                    OperatorButtonView(icon: "minus", selectedOperator: $viewModel.selectedOperator, buttonOperator: .subtraction, color: color){
                        viewModel.handleOperation(operation: .subtraction)
                    }
                    
                    ClearButtonView(color: color){
                        viewModel.handleClear()
                    }
                }
                
                HStack {
                    OperatorButtonView(icon: "multiply", selectedOperator: $viewModel.selectedOperator, buttonOperator: .multiply, color: color){
                        viewModel.handleOperation(operation: .multiply)
                    }
                    
                    OperatorButtonView(icon: "divide", selectedOperator: $viewModel.selectedOperator, buttonOperator: .division, color: color){
                        viewModel.handleOperation(operation: .division)
                    }
                    
                    OperatorButtonView(icon: "equal", selectedOperator: $viewModel.selectedOperator, buttonOperator: .multiply, color: color){
                        handleEquals()
                    }
                }
            }
            
            VStack(spacing: 8) {
                HStack {
                    NumberButtonView(icon: "7.circle", color: color){
                        viewModel.handleNumberPress(number: 7)
                    }
                    
                    NumberButtonView(icon: "8.circle", color: color){
                        viewModel.handleNumberPress(number: 8)
                    }
                    
                    NumberButtonView(icon: "9.circle", color: color){
                        viewModel.handleNumberPress(number: 9)
                    }
                }
                
                HStack {
                    NumberButtonView(icon: "4.circle", color: color){
                        viewModel.handleNumberPress(number: 4)
                    }
                    
                    NumberButtonView(icon: "5.circle", color: color){
                        viewModel.handleNumberPress(number: 5)
                    }
                    
                    NumberButtonView(icon: "6.circle", color: color){
                        viewModel.handleNumberPress(number: 6)
                    }
                }
                
                HStack {
                    NumberButtonView(icon: "1.circle", color: color){
                        viewModel.handleNumberPress(number: 1)
                    }
                    
                    NumberButtonView(icon: "2.circle", color: color){
                        viewModel.handleNumberPress(number: 2)
                    }
                    
                    NumberButtonView(icon: "3.circle", color: color){
                        viewModel.handleNumberPress(number: 3)
                    }
                }
                
                HStack {
                    NumberButtonView(icon: "0.circle", color: color){
                        viewModel.handleNumberPress(number: 0)
                    }
                }
                
            }
            
            Text("\(viewModel.result)")
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

//MARK: - Content Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
