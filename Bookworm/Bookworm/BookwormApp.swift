//
//  BookwormApp.swift
//  Bookworm
//
//  Created by OLEKSANDR ISAIEV on 23.12.2023.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            StudentsView()
        }
        .modelContainer(for: Student.self)
    }
}
