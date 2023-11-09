//
//  TableView.swift
//  swiftuitutorial
//
//  Created by Sange Sherpa on 09/11/2023.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var fullName: String
    var age: String
    
    var introduction: String { "Hi! I'm \(fullName)"}
}

struct TableView: View {
    @State private var people = [
        Person(fullName: "Lakpa Sange Sherpa", age: "22"),
        Person(fullName: "Lakpa Sonam Sherpa", age: "26"),
        Person(fullName: "Pem Laki Sherpa", age: "40"),
        Person(fullName: "Pasang Kaji Sherpa", age: "42"),
        Person(fullName: "Emily Davis", age: "22"),
        Person(fullName: "David Wilson", age: "35"),
        Person(fullName: "Sarah Brown", age: "29"),
        Person(fullName: "Robert Lee", age: "33"),
        Person(fullName: "Jennifer White", age: "27"),
    ]
    
    @State private var selectedPeople = Set<Person.ID>()
    
    var body: some View {
        Table(people, selection: $selectedPeople) {
            TableColumn("Full Name", value: \.fullName)
            TableColumn("Age", value: \.age)
        }
        
        Text("Selected People - \(selectedPeople.count)")
    }
}

#Preview {
    TableView()
}
