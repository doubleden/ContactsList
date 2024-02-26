//
//  ContactsListTableViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 45
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contactDetailsVC = segue.destination as? ContactDetailsViewController
        contactDetailsVC?.person = persons[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactsListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCell",
            for: indexPath
        )
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName

        cell.contentConfiguration = content
        return cell
    }
}
