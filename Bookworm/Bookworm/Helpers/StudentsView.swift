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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    StudentsView()
}
