//
//  User.swift
//  DesignPattern
//
//  Created by maged on 09/03/2024.
//

import Foundation

struct User {
    let name: String
    let age: Int
    let job: String
    let email: String
    let maritalStatus: MaritalStaus
    let location: Location
    
    
    enum MaritalStaus {
        case single
        case maried
        case engaged
    }
}

struct Location {
    let lon: Double
    let lat: Double
}
