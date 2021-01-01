//
//  TaskParts.swift
//  dosomething
//
//  Created by Stephen on 1/1/21.
//

import Foundation

struct TaskParts: Codable, Identifiable {
    var id = UUID()
    var name: String
    var isComplete: Bool
    var isToday: Bool
}
