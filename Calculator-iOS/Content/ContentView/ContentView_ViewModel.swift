//
//  ContentView_ViewModel.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import Foundation

extension ContentView {
    @MainActor
    class ViewModel: ObservableObject {
        @Published var temporaryNumber: Int = 0
        @Published var expression: String = ""
        @Published var result: Int = 0
        @Published var selectedOperator: Operators = .addition
        
        
        //MARK: Handling of clearing operation
        func handleClear(){
            self.expression = ""
            self.result = 0
            self.temporaryNumber = 0
            self.selectedOperator = .addition
        }
        
        
        //MARK: Handling of number presses
        func handleNumberPress(number: Int){
            self.expression += String(number)
            self.temporaryNumber = Int(self.expression) ?? 0
        }
        
        
        //MARK: Handling of operator button press
        func handleOperation(operation: Operators){
            if (self.temporaryNumber != 0) {
                self.result = self.temporaryNumber
            }
            
            self.expression = ""
            self.temporaryNumber = 0
            self.selectedOperator = operation
        }
    }
}
