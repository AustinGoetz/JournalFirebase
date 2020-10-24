//
//  Entry.swift
//  JournalFirebase
//
//  Created by Austin Goetz on 10/23/20.
//

import Foundation

class Entry {
    let title: String
    let body: String
    let timestamp: Date
    
    init(title: String, body: String, timestamp: Date = Date()) {
        self.title = title
        self.body = body
        self.timestamp = timestamp
    }
}
