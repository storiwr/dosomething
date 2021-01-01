//
//  TaskCell.swift
//  dosomething
//
//  Created by Stephen on 1/1/21.
//

import SwiftUI

struct TaskCell: View {
    var task: TaskParts
    
    var body: some View {
        HStack {
            Text(task.name)
            Text(String(task.isToday))
            Text(String(task.isComplete))
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: TaskParts(name: "happy", isComplete: false, isToday: false))
    }
}
