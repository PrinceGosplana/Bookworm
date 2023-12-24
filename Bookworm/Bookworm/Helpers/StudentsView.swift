//
//  StudentsView.swift
//  Bookworm
//
//  Created by OLEKSANDR ISAIEV on 23.12.2023.
//

import SwiftUI
import SwiftData

struct StudentsView: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]
    private let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
    private let lastNames = ["Granger", "Lovegood", "Potter", "Weasly"]
    
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    insertButton()
                }
            }
        }
    }
    
    private func insertButton() {
        let chosenFirstName = firstNames.randomElement()!
        let choseLastName = lastNames.randomElement()!
        
        modelContext.insert(Student(id: UUID(), name: "\(chosenFirstName) \(choseLastName)"))
    }
}

#Preview {
    StudentsView()
}
