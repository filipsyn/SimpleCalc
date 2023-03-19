//
//  ContentView.swift
//  Calculator-iOS
//
//  Created by Filda on 19.03.2023.
//

import SwiftUI

//MARK: - Content View
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

//MARK: - Content Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
