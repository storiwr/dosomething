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
    
    var body: some View {
        List { ForEach(tasks.items) { task in
            TaskCell(task: task)
        }
            
            if complete == true {
                Image(systemName: "checkmark.circle")
            } else {
                Image(systemName: "circle")
            }
            Text("Hello, world!")
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            if inToday == true {
                Image(systemName: "sun.max.fill")
            } else {
                Image(systemName: "sun.max")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
