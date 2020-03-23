//
//  Person.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var nameWithSurname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phoneNumber: phones[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

