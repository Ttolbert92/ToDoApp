//
//  NewToDoView.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 5/29/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Add a new task")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                
            }
            .padding()
            Button(action: {
    
            }) {
                Text("Add")
            }
            .accentColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            .buttonStyle(.borderedProminent)
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
