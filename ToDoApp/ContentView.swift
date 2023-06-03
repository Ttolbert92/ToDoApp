//
//  ContentView.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 5/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: ToDo.entity(),
        sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    @State private var showNewTask = false
    
    
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
                Button(action:        {
                    
                    self.showNewTask = true }) {
                        
                        Text("+")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.purple)
                        
                    }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            
            List { ForEach (toDoItems) { toDoItem in
                if toDoItem.isImportant == true {
                    Text("‼️" + (toDoItem.title ?? "No title"))
                } else {
                    Text(toDoItem.title ?? "No title")
                    
                }
                
            }
            .onDelete(perform: deleteTask)
            }
            .listStyle(.plain)
            .animation(.easeOut, value: showNewTask)
            
        }
        
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
                .transition(.move(edge: .bottom))
                .animation(.easeOut, value: showNewTask)
            
        }
        
    }
   
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
}
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    

