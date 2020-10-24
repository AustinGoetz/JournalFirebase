//
//  DateExtension.swift
//  JournalFirebase
//
//  Created by Austin Goetz on 10/23/20.
//

import Foundation

extension Date {
    func asString() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        
        return formatter.string(from: self)
    }
}
