//
//  AnimalCollectionViewEnum.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 11/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

enum AnimalCollectionViewEnum: Int {
    
    case Cell
    
    var reuseId: String {
        switch self {
        case .Cell:
            return "AnimalCollectionViewCell"
        }
    }
}
