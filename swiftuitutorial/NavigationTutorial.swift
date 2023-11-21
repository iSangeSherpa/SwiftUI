//
//  NavigationTutorial.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 21/11/2023.
//

import SwiftUI

struct NavigationTutorial: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house")
                    .font(.system(size: 80))
                
                Text("Home Page")
                    .font(.system(size: 20))
                    .padding(.vertical, 10)
                
                NavigationLink(
                    destination: SecondScreen(),
                    label: {
                        CustomButton(title: "Home",
                                     textColor: .white,
                                     backgroundColor: .pink)
                    })
            }
            .navigationTitle("Home")
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .font(.system(size: 80))
            
            Text("Second Page")
                .font(.system(size: 20))
                .padding(.vertical, 10)
            
            NavigationLink(
                destination: Images(),
                label: {
                    CustomButton(title: "Go home",
                                 textColor: .black,
                                 backgroundColor: .orange)
                })
        }

    }
}

struct CustomButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(8)
    }
}

#Preview {
    NavigationTutorial()
}
