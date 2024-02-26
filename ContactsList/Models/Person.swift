//
//  Person.swift
//  ContactsList
//
//  Created by Denis Denisov on 26/2/24.
//

struct Person {
    let name: String
    let phone: String
    let email: String
    
    static func getPersons() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        while !data.names.isEmpty {
            let randomName = "\(data.names.remove(at: Int.random(in:0..<data.names.count))) \(data.surnames.remove(at: Int.random(in: 0..<data.surnames.count)))"
            let randomPhone = "\(data.phones.remove(at: Int.random(in: 0..<data.phones.count)))"
            let randomEmails = "\(data.emails.remove(at: Int.random(in: 0..<data.emails.count)))"
            
            let person = Person(name: randomName, phone: randomPhone, email: randomEmails)
            persons.append(person)
        }
        
        return persons
    }
}
