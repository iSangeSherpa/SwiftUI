//
//  Stacksss.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 09/11/2023.
//

import SwiftUI

struct Stacksss: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            VStack {
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
        }
    }
}

#Preview {
    Stacksss()
}
