//
//  Task.swift
//  dosomething
//
//  Created by Stephen on 1/1/21.
//

import Foundation
import Combine

class Task: ObservableObject {
    @Published var items: [TaskParts] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard.data(forKey: "Items") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([TaskParts].self, from: items) {
                self.items = decoded
                return
            }
        }

        self.items = []
    }
}
