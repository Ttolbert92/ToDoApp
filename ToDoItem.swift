//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 5/29/23.
//

import Foundation

class ToDoItem: ObservableObject, Identifiable {

    var id = UUID()
   
    @Published var title = ""
    @Published var isImportant = false
    @Published var isComplete = false
    
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

