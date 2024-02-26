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
    
    static func getPersons() -> [Person] {
        let data = DataStore()
        var persons: [Person] = []
        
        while !data.names.isEmpty {
            let randomName = "\(data.names.remove(at: Int.random(in:0..<data.names.count)))"
            let randomSurname = "\(data.surnames.remove(at: Int.random(in: 0..<data.surnames.count)))"
            let randomPhone = "\(data.phones.remove(at: Int.random(in: 0..<data.phones.count)))"
            let randomEmails = "\(data.emails.remove(at: Int.random(in: 0..<data.emails.count)))"
            
            let person = Person(name: randomName, surname: randomSurname, phone: randomPhone, email: randomEmails)
            persons.append(person)
        }
        
        return persons
    }
}


