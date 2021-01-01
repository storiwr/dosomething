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
//            Text(String(task.isToday))
//            Text(String(task.isComplete))
            if task.isComplete == true {
                    Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
                Spacer()
            if task.isToday == true {
                    Image(systemName: "sun.max.fill")
                } else {
                    Image(systemName: "sun.max")
                }
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: TaskParts(name: "happy", isComplete: true, isToday: true))
    }
}
