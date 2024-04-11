//
//  User.swift
//  Appetizers
//
//  Created by Yanina Kovrakh on 10.04.2024.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
