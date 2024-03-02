//
//  Person.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//
struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rowsForDetails: [String] {
        [phone, email]
    }
    
    static func getPersons() -> [Person] {
        let data = DataStore.shared
        var persons: [Person] = []
        
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        let minIteration = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<minIteration {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        return persons
    }
}
