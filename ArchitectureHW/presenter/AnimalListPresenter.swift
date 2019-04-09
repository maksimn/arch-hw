//
//  AnimalListPresenter.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 09/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListPresenter {
    
    weak var animalListView: AnimalListViewController?
    var animalListRepository: AnimalListRepository?

    init(_ animalListView: AnimalListViewController, _ animalListRepository: AnimalListRepository) {
        self.animalListView = animalListView
        self.animalListRepository = animalListRepository
    }
    
    func showAnimalList() {
        animalListView?.animalDataSource = animalListRepository?.getAnimalList()
        animalListView?.show()
    }
}
