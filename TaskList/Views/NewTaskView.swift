//
//  NewTaskView.swift
//  TaskList
//
//  Created by Timothy Larkin on 10/17/19.
//  Copyright © 2019 abstracttools.com. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    @State var text = ""
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
                .padding()
            Button("Add") {
                self.taskStore.tasks.append(Task(name: self.text))
            }
            .disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider{
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
