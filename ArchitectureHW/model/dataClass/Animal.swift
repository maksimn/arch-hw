//
//  Animal.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class Animal {
    
    var id: Int
    var name: String
    var shortDescription: String
    var description: String
    
    init(id: Int, name: String, shortDescription: String, description: String) {
        self.id = id
        self.name = name
        self.shortDescription = shortDescription
        self.description = description
    }
}
