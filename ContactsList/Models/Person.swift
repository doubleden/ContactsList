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
        
        let minDataSize = min(
            data.names.count,
            data.surnames.count,
            data.phones.count,
            data.emails.count
        )
        
        for _ in 1...minDataSize {
            let person = Person(
                name: getRandom(from: &data.names),
                surname: getRandom(from: &data.surnames),
                phone: getRandom(from: &data.phones),
                email: getRandom(from: &data.emails)
            )
            persons.append(person)
        }
        
        return persons
    }
}

private func getRandom(from elements: inout [String]) -> String {
    elements.remove(at: Int.random(in: 0..<elements.count))
}
