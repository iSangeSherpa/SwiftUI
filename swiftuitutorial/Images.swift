//
//  Image.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 06/11/2023.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300)
    }
}

#Preview {
    Images()
}
