//
//  ContentView.swift
//  TaskList
//
//  Created by Timothy Larkin on 10/17/19.
//  Copyright © 2019 abstracttools.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore
    @State var modalIsPresented = false
    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                trailing:
                Button(action: { self.modalIsPresented = true }) {
                    Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
