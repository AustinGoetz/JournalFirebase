//
//  EntryController.swift
//  JournalFirebase
//
//  Created by Austin Goetz on 10/23/20.
//

import Foundation

class EntryController {
    
    // MARK: - Properties
    /// Source of Truth
    var entries: [Entry] = []
    
    // MARK: - CRUD
    // Create
    func addEntryWith(title: String, body: String) {
        let newEntry = Entry(title: title, body: body)
        
        entries.append(newEntry)
    }
}
