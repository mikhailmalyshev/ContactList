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
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        for _ in 1...10 {
            persons.append(Person(name: getRandomName(),
                                  surname: getRandomSurname(),
                                  phoneNumber: getRandomPhoneNumber(),
                                  email: getRandomEmail()))
        }
        return persons
    }
    
    static func getRandomName() -> String {
        if let randomName = names.randomElement() {
            names.removeAll() { $0 == randomName }
            return randomName
        } else {
            return "Name"
        }
    }
    
    static func getRandomSurname() -> String {
        if let randomSurname = surnames.randomElement() {
            surnames.removeAll() { $0 == randomSurname }
            return randomSurname
        } else {
            return "Surname"
        }
    }
    
    static func getRandomPhoneNumber() -> String {
        if let randomPhoneNumber = phoneNumbers.randomElement() {
            phoneNumbers.removeAll() { $0 == randomPhoneNumber }
            return randomPhoneNumber
        } else {
            return "Phone Number"
        }
    }
    
    static func getRandomEmail() -> String {
        if let randomEmail = emails.randomElement() {
            emails.removeAll() { $0 == randomEmail }
            return randomEmail
        } else {
            return "Name"
        }
    }
}

