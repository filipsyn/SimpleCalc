//
//  ClearButtonView.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//


import SwiftUI

extension ContentView {
    struct ClearButtonView: View {
        var color: Color
        var onClick: () -> Void
        
        var body: some View {
            Button(
                action: {
                    onClick()
                }, label: {
                    CalculatorButtonLayout(icon: "c.circle", color: color)
                }
            )
        }
    }
}
