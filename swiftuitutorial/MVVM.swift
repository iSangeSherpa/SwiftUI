//
//  MVVM.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 21/11/2023.
//

import SwiftUI

struct ToDoListItem: Identifiable {
    var id = UUID()
    var title: String
}

class ToDolist: ObservableObject {
    @Published var items: [ToDoListItem] = []
}

struct MVVM: View {
    @StateObject var viewmodel = ToDolist()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewmodel.items) { item in
                    Text(item.title)
                }
                .listStyle(GroupedListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    self.viewmodel.items = [
                        ToDoListItem(title: "Homework"),
                        ToDoListItem(title: "Get milk"),
                        ToDoListItem(title: "Reading"),
                        ToDoListItem(title: "Upload Video")
                    ]
                    
                } label: {
                Text("Refresh")
            }
            }
        }
    }
}

#Preview {
    MVVM()
}
