//
//  OperandTextFieldView.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import SwiftUI

extension ContentView {
    
    struct OperandTextFieldView: View {
        var text: String
        @Binding var operand: String
        
        var body: some View {
            HStack {
                Text(text)
                TextField("0.0", text: $operand)
                    .multilineTextAlignment(.trailing)
            }
        }
    }
    
}
