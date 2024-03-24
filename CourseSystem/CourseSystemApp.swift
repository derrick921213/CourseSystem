//
//  CourseSystemApp.swift
//  CourseSystem
//
//  Created by derrick on 2024/3/24.
//

import SwiftUI

@main
struct CourseSystemApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
