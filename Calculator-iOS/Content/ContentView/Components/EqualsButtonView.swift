//
//  EqualsButtonView.swift
//  Calculator-iOS
//
//  Created by Filda on 20.03.2023.
//

import SwiftUI

extension ContentView {
    struct EqualsButtonView: View {
        var color: Color
        var onClick: () -> Void

        var body: some View {
            Button(action: {
                onClick()
            }, label: {
                CalculatorButtonLayout(icon: "equal", color: color)
            })
        }
    }

}
