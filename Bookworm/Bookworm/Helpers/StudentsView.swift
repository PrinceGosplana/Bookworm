//
//  StudentsView.swift
//  Bookworm
//
//  Created by OLEKSANDR ISAIEV on 23.12.2023.
//

import SwiftUI
import SwiftData

struct StudentsView: View {
    @Query var students: [Student]
    
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
        }
    }
}

#Preview {
    StudentsView()
}
