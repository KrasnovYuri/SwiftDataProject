//
//  User.swift
//  SwiftDataProject
//
//  Created by Юрий on 27.06.2024.
//

import Foundation
import SwiftData

@Model
class User {
    let name: String
    let city: String
    let joinDate: Date
    @Relationship(deleteRule: .cascade) var jobs = [Job]()
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
