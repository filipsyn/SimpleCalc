//
//  OperatorButtonView.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import SwiftUI

extension ContentView {
    struct OperatorButtonView: View {
        var icon: String
        var color: Color
        var onClick: () -> Void

        var body: some View {
            Button(action: {
                onClick()
            }, label: {
                CalculatorButtonLayout(icon: icon, color: color)
            })
        }
    }
}
