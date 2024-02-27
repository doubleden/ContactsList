//
//  ContactDetailsViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
