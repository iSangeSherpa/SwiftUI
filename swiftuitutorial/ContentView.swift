//
//  ContentView.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 06/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("""
                Welcome Sange!
                """)
            .font(.system(size: 23, weight: .bold, design: .monospaced))
            .kerning(3)
            .multilineTextAlignment(.leading)
            .baselineOffset(14)
            .frame(width: 350, height: 100, alignment: .topLeading)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
