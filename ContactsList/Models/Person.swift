//
//  Person.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//
let data = DataStore()

struct Person {
    let name: String
    let surname: String
    let contacts: [PersonContact]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        for _ in 1...20 {
            let person = Person(
                name: getRandom(from: &data.names),
                surname: getRandom(from: &data.surnames),
                contacts: getContacts()
            )
            persons.append(person)
        }
        
        return persons
    }
}

enum PersonContact {
    case phone(String)
    case email(String)
}

private func getContacts() -> [PersonContact] {
    var personContacts: [PersonContact] = []
    
    personContacts.append(.phone(getRandom(from: &data.phones)))
    personContacts.append(.email(getRandom(from: &data.emails)))
    
    return personContacts
}

private func getRandom(from elements: inout [String]) -> String {
    elements.remove(at: Int.random(in: 0..<elements.count))
}
