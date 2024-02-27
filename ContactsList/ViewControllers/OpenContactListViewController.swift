//
//  OpenContactListViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 27/2/24.
//

import UIKit

class OpenContactListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].fullName)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            content.text = person.phone
            
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            content.text = person.email
            
            cell.contentConfiguration = content
            return cell
        }
    }
}
