//
//  Animal.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

struct Animal {
    
    var id: Int
    var name: String
    var shortDescription: String
    var description: String
    var placeholderColor: UIColor
    
    init(id: Int, name: String, shortDescription: String, description: String, placeholderColor: UIColor) {
        self.id = id
        self.name = name
        self.shortDescription = shortDescription
        self.description = description
        self.placeholderColor = placeholderColor
    }
}
