//
//  OpenContactListViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 27/2/24.
//

import UIKit

final class OpenContactListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }
}


// MARK: - UITableViewDataSource
extension OpenContactListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].fullName)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()

        let contact = person.contacts[indexPath.row]
           switch contact {
           case .phone(let number):
               content.text = number
           case .email(let email):
               content.text = email
           }
        
        cell.contentConfiguration = content
        return cell
    }
}
