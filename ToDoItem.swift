//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 5/29/23.
//

import Foundation

class ToDoItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

