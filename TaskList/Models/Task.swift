//
//  Task.swift
//  TaskList
//
//  Created by Timothy Larkin on 10/17/19.
//  Copyright © 2019 abstracttools.com. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
