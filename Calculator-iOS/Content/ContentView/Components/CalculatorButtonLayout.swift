//
//  CalculatorButtonLayout.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import SwiftUI

extension ContentView {
    
    struct CalculatorButtonLayout: View {
        var icon: String
        var color: Color
        
        var body: some View {
            Image(systemName: icon)
                .frame(height: 20.0)
                .foregroundColor(Color("ButtonTextColor"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(color)
                .cornerRadius(20)
        }
    }
}
