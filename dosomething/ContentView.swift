//
//  ContentView.swift
//  dosomething
//
//  Created by Stephen on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tasks = Task()
    @State private var inToday = true
    @State private var complete = true
    @State private var showingNewTaskView = false
    
    var body: some View {
        NavigationView {
            List { ForEach(tasks.items) { task in
                TaskCell(task: task)
            }
            
            }.padding()
            .navigationBarTitle("Cards")
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingNewTaskView = true
                }) {
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $showingNewTaskView) {
                NewTaskView(tasks: self.tasks)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
