//
//  Icons.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 06/11/2023.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "mic.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
//            .font(.system(size: 150))
//            .foregroundColor(.pink)
            .frame(width: 150, height: 150)
    }
}

#Preview {
    Icons()
}
