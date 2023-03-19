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
    }
}
