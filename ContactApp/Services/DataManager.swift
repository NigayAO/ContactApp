//
//  DataManager.swift
//  ContactApp
//
//  Created by Alik Nigay on 09.11.2021.
//

import Foundation

class DataManager {
    static private var names = [
        "John", "Aaron", "Steven", "Sharon", "Nikola",
        "Ted", "Bruc", "Allan", "Carl"
    ]
    static private var surNames = [
        "Murphy", "Jenkin", "Lee", "Stuart", "Parker",
        "Stark", "Butcher", "Rodgers", "Wayne"
    ]
    static private var phones = [
        "+7(999)1111111", "+7(999)2111112", "+7(999)3111113", "+7(999)4111114",
        "+7(999)5111115", "+7(999)6111116", "+7(999)7111117", "+7(999)8111118",
        "+7(999)9111119"
    ]
    static private var emails = [
        "Murphy@bk.com", "Jenkin@bk.com", "Lee@bk.com", "Stuart@bk.com",
        "Parker@bk.com", "Stark@bk.com", "Butcher@bk.com", "Rodgers@bk.com",
        "Waynn@bk.com"
    ]
}

extension DataManager {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        names.shuffle()
        surNames.shuffle()
        phones.shuffle()
        emails.shuffle()
        
        for element in 0...names.count - 1 {
            let person = Person(name: names[element],
                                surName: surNames[element],
                                phone: phones[element],
                                email: emails[element])
            persons.append(person)
        }
        return persons
    }
}
