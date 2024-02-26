//
//  Person.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//

struct Contact {
    let fullname: String
    let phone: String
    let email: String
    
    static func getContacts() -> [Contact] {
        
        [
            Contact(fullname: "", phone: "", email: "")
        ]
    }
}
