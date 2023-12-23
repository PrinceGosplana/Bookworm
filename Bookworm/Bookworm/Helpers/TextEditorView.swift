//
//  TextEditorView.swift
//  Bookworm
//
//  Created by OLEKSANDR ISAIEV on 23.12.2023.
//

import SwiftUI

struct TextEditorView: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
//            TextEditor(text: $notes)
//                .navigationTitle("Notes")
//                .padding()
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    TextEditorView()
}
