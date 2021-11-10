//
//  ContactModel.swift
//  ContactApp
//
//  Created by Alik Nigay on 09.11.2021.
//

struct Person {
    var name: String
    var surName: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}
