//
//  TodayView.swift
//  dosomething
//
//  Created by Stephen on 1/2/21.
//

import SwiftUI

struct TodayView: View {
    @ObservedObject var tasks = Task()
    @State private var showingNewTaskView = false
    @State private var showingTodayOnly = false
    
    var body: some View {
            List { ForEach(tasks.items.filter {$0.isToday == true}) { task in
                TaskCell(task: task)
                }
            }.padding()
            
            
            
            
            
        
    }
}
    

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
