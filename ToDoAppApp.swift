//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 6/3/23.
//

import SwiftUI

@main
struct toDoListForLessonApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
