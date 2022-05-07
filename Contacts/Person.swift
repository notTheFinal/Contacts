//
//  Person.swift
//  Contacts
//
//  Created by Александр on 07.05.2022.
//

struct Person {
    let name: String
    let surname: String
    let contacts: Contact
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

struct Contact {
    let phoneNumber: String
    let email: String
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let dataManager = DataManager()
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                contacts: Contact(
                phoneNumber: phoneNumbers[index],
                email: emails[index]
                )
              ))
        }
        return persons
    }
}
