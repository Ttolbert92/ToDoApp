//
//  ContentView.swift
//  ToDoApp
//
//  Created by Deangelo Tolbert on 5/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.medium)
            Spacer()
                Button(action: {
                    
                }){
                    Text("+")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.purple)
                
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
