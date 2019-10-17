//
//  TaskStore.swift
//  TaskList
//
//  Created by Timothy Larkin on 10/17/19.
//  Copyright © 2019 abstracttools.com. All rights reserved.
//

class TaskStore {
    var tasks: [Task] = [
    "Finish this tutorial.",
    "Attend Gary's retirement party.",
    "Take the bus home.",
    "Next step in making bread.",
    "Make dinner.",
    "Install Catalina.",
    "Install XCode 11.",
    "Run generator.",
    "Get ready for bed.",
    "Sleep."
    ].map{ Task(name: $0)}
    
}
