//
//  DataManager.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    
    var names = ["Mikhail", "Sergey", "Alexander", "Roman", "Evgeniy",
                 "Ivan", "Alexey", "Vitaliy", "Aristarch", "Eremey"]
    
    var surnames = ["Ivanov", "Petrov", "Sidorov", "Vakulenko", "Lobanov",
                    "Karasev", "Zuev", "Churasov", "Lojkin", "Eremeev"]
    
    var phoneNumbers = ["8(910)7582324", "8(950)3143232", "8(953)4832343",
                        "8(999)5762343", "8(910)5432989", "8(999)9996576",
                        "8(963)7659034", "8(968)8372958", "8(956)9872354",
                        "8(999)7864343"]
    
    var emails = ["frog@mail.ru", "dog@yandex.ru", "cat@gmail.com", "gitara@mail.ru",
                  "oblako@yamdex.ru", "milkyway@gmail.com", "snikers@mail.ru", "kok@mail.ru", "robot@gmail.com", "sniper@mail.ru"]
}
