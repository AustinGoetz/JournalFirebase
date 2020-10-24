//
//  EntryListTableViewController.swift
//  JournalFirebase
//
//  Created by Austin Goetz on 10/23/20.
//

import UIKit

class EntryListTableViewController: UITableViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EntryController.shared.entries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath)

        let entryToDisplay = EntryController.shared.entries[indexPath.row]
        
        cell.textLabel?.text = entryToDisplay.title
        cell.detailTextLabel?.text = entryToDisplay.timestamp.asString()

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let entryToDelete = EntryController.shared.entries[indexPath.row]
            
            EntryController.shared.remove(entry: entryToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        // I: Identifier
        if segue.identifier == "toEditEntry" {
            // I: Index
            if let index = tableView.indexPathForSelectedRow {
                // D: Destination
                let destinationVC = segue.destination as? EntryDetailViewController
                // O: Object to send
                let entryToSend = EntryController.shared.entries[index.row]
                // O: receive Object
                destinationVC?.entry = entryToSend
            }
        }
    }
}
