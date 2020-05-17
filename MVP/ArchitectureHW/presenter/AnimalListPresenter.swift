//
//  AnimalListPresenter.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 09/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListPresenter {
    
    private unowned var animalListView: AnimalListView
    private var animalListRepository: AnimalListRepository?

    init(_ animalListView: AnimalListView, _ animalListRepository: AnimalListRepository) {
        self.animalListView = animalListView
        self.animalListRepository = animalListRepository
    }
    
    func showAnimalList() {
        let animalList = animalListRepository?.getAnimalList()
        animalListView.showAnimalList(animalList ?? [])
    }
}
