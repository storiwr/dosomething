//
//  NewTaskView.swift
//  dosomething
//
//  Created by Stephen on 1/1/21.
//

import SwiftUI

struct NewTaskView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var tasks: Task
    @State private var name = ""
    @State private var isComplete = true
    @State private var isToday = true

    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $name)
//                TextField("Body", text: $isComplete)

                }
                .navigationBarTitle("New Card")
                .navigationBarItems(trailing: Button("Done") {

                    let item = TaskParts(name: self.name, isComplete: self.isComplete, isToday: self.isToday)
                    self.tasks.items.append(item)
                    self.presentationMode.wrappedValue.dismiss()
        })
    }
    }
}
struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(tasks: Task())
    }
}
