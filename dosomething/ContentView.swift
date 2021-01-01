//
//  ContentView.swift
//  dosomething
//
//  Created by Stephen on 12/27/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tasks = Task()
    @State private var showingNewTaskView = false
    @State private var showingTodayOnly = false
    
    var body: some View {
        NavigationView {
            List { ForEach(tasks.items) { task in
                TaskCell(task: task)
            }
            
            }.padding()
            .navigationBarTitle("Tasks")
            
            
            .navigationBarItems(leading:
                    Button(action: {
                        self.showingTodayOnly = true
                    }) {
                        Image(systemName: "sunrise.fill")
                    },
                    trailing:
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
