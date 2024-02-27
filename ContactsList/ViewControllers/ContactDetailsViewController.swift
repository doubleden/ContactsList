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
        
        for contact in person.contacts {
            switch contact {
            case .phone(let number):
                phoneLabel.text = number
            case .email(let email):
                emailLabel.text = email
            }
        }
    }
}
