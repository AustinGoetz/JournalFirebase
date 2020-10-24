//
//  EntryController.swift
//  JournalFirebase
//
//  Created by Austin Goetz on 10/23/20.
//

import Foundation

class EntryController {
    
    // MARK: - Properties
    /// Singleton
    static let shared = EntryController()
    /// Source of Truth
    var entries: [Entry] = []
    
    // MARK: - CRUD
    // Create
    func addEntryWith(title: String, body: String) {
        let newEntry = Entry(title: title, body: body)
        
        entries.append(newEntry)
    }
    
    // Update
    func update(entry: Entry, title: String, body: String) {
        entry.title = title
        entry.body = body
    }
}
